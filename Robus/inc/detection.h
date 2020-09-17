/******************************************************************************
 * @file detection
 * @brief detection state machine.
 * @author Luos
 * @version 0.0.0
 ******************************************************************************/
#ifndef _DETECTION_H_
#define _DETECTION_H_

#include <robus.h>
#include <luosHAL.h>

/*******************************************************************************
 * Definitions
 ******************************************************************************/


#define TIMERVAL ((unsigned int)(0.00002 * MCUFREQ))

typedef enum
{
    NO_DETECT,
    MASTER_DETECT
} detection_mode_t;

typedef enum
{
    POKE,
    RELEASE
} expected_detection_t;

typedef struct __attribute__((__packed__))
{
    branch_t keepline;           /*!< last keepline status on PTP lines . */
    unsigned char detection_end; /*!< All Virtual Module have ID. */
    unsigned char detected_vm;   /*!< Virtual Module number. */
    expected_detection_t expect;
    unsigned short branches[NO_BRANCH];
    unsigned char activ_branch;
} detection_t;
/*******************************************************************************
 * Variables
 ******************************************************************************/

/*******************************************************************************
 * Function
 ******************************************************************************/
void reset_detection(void);
unsigned char poke(branch_t branch);
void poke_next_branch(void);
void ptp_handler(branch_t branch);
unsigned char reset_network_detection(vm_t *vm);

#endif /* _DETECTION_H_ */