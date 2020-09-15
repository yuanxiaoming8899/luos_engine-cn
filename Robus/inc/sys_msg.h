/******************************************************************************
 * @file sys_msg
 * @brief protocol system message management.
 * @author Luos
 * @version 0.0.0
 ******************************************************************************/
#ifndef _SYS_MSG_H_
#define _SYS_MSG_H_

#include <robus.h>
/*******************************************************************************
 * Definitions
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

/*******************************************************************************
 * Function
 ******************************************************************************/
/**
 * \fn void send_ack(void);
 * \brief  send an acknoledgement.
 */
void send_ack(void);

/**
 * \fn unsigned char robus_send_sys(vm_t* vm, msg_t *msg)
 * \brief  Send Luos management messages.
 *
 * \param virtual module who send.
 * \param msg Message to send.
 *
 * \return sent or not
 */
unsigned char robus_send_sys(vm_t *vm, msg_t *msg);

/**
 * \fn unsigned char set_extern_id(vm_t* vm, target_mode_t target_mode, unsigned short target, unsigned short newid)
 * \brief  Send an ID to a module.
 *
 * \param virtual module who send.
 * \param target_mode target_mode of the message.
 * \param target target of the message.
 * \param newid new id of the target.
 *
 * \return sent or not
 */
unsigned char set_extern_id(vm_t *vm, target_mode_t target_mode, unsigned short target, unsigned short newid);

#endif /* _SYS_MSG_H_ */
