/******************************************************************************
 * @file node
 * @brief node level functions
 * @author Luos
 * @version 0.0.0
 ******************************************************************************/
#include "luos_engine.h"
#include "luos_hal.h"
#include "node.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
typedef struct
{
    node_t info;
    node_state_t state;
    bool timeout_run;
    uint32_t timeout;
} node_ctx_t;

/*******************************************************************************
 * Variables
 ******************************************************************************/
node_ctx_t node_ctx;

/*******************************************************************************
 * Function
 ******************************************************************************/

/******************************************************************************
 * @brief get node structure
 * @param None
 * @return Node pointer
 ******************************************************************************/
node_t *Node_Get(void)
{
    return (node_t *)&node_ctx.info;
}

/******************************************************************************
 * @brief get network_state value
 * @param None
 * @return state
 ******************************************************************************/
node_state_t Node_GetState(void)
{
    return node_ctx.state;
}

/******************************************************************************
 * @brief Node initialization
 * @param None
 * @return None
 ******************************************************************************/
void Node_Init(void)
{
    // Set default service id. This id is a void id used if no service is created.
    node_ctx.info.node_id = DEFAULTID;
    // By default node are not certified.
    node_ctx.info.certified = false;
    // set node_info value
    node_ctx.info.node_info = 0;
#ifdef NO_RTB
    node_ctx.node_info |= 1 << 0;
#endif
}

/******************************************************************************
 * @brief Node loop management, specially for timeout purpose
 * @param None
 * @return None
 ******************************************************************************/
void Node_Loop(void)
{
    if (node_ctx.timeout_run)
    {
        // if timeout is reached, go back to link-down state
        if (Luos_GetSystick() - node_ctx.timeout > DETECTION_TIMEOUT_MS)
        {
            node_ctx.state = NO_DETECTION;
        }
    }
}

/******************************************************************************
 * @brief set network_state value
 * @param state
 * @return None
 * _CRITICAL function call in IRQ
 ******************************************************************************/
_CRITICAL inline void Node_SetState(node_state_t state)
{
    switch (state)
    {
        case NO_DETECTION:
            node_ctx.timeout_run = false;
            node_ctx.timeout     = 0;
            break;
        case LOCAL_DETECTION:
        case EXTERNAL_DETECTION:
            node_ctx.timeout_run = true;
            node_ctx.timeout     = Luos_GetSystick();
            break;
        case DETECTION_OK:
            node_ctx.timeout_run = false;
            node_ctx.timeout     = 0;
            break;
        default:
            break;
    }
    node_ctx.state = state;
}

/******************************************************************************
 * @brief Get tick number
 * @param None
 * @return Tick
 ******************************************************************************/
uint32_t Luos_GetSystick(void)
{
    return LuosHAL_GetSystick();
}

/******************************************************************************
 * @brief Check if the node is connected to the network
 * @param None
 * @return TRUE if the node is connected to the network
 ******************************************************************************/
bool Luos_IsDetected(void)
{
    return (node_ctx.state == DETECTION_OK);
}

/******************************************************************************
 * @brief Function that changes the filter value
 * @param state : Put to "1" if we want to disable the filter , "0" to enable
 * @param service
 * @return None
 ******************************************************************************/
void Luos_SetFilterState(uint8_t state, service_t *service)
{
    // Enable or disable the filter for a given service
    // This function have been disabled since 3.0.0
}

/******************************************************************************
 * @brief Function that changes the verbose mode
 * @param mode : Put to "1" if we want to enable the verbose mode, "0" to disable
 * @return None
 ******************************************************************************/
void Luos_SetVerboseMode(uint8_t mode)
{
    // Enable or disable the verbose mode
    // This function have been disabled since 3.0.0
}