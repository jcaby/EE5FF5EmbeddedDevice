#include <stdio.h>
#include <stdlib.h>

int main() {

#define TWAI_FRAME_MAX_DLC              8           /**< Max data bytes allowed in TWAI */
#define MSG_ID                  0x555   //11 bit standard format ID


    typedef struct {
        union {
            struct {
                //The order of these bits must match deprecated message flags for compatibility reasons
                uint32_t extd: 1;           /**< Extended Frame Format (29bit ID) */
                uint32_t rtr: 1;            /**< Message is a Remote Frame */
                uint32_t ss: 1;             /**< Transmit as a Single Shot Transmission. Unused for received. */
                uint32_t self: 1;           /**< Transmit as a Self Reception Request. Unused for received. */
                uint32_t dlc_non_comp: 1;   /**< Message's Data length code is larger than 8. This will break compliance with ISO 11898-1 */
                uint32_t reserved: 27;      /**< Reserved bits */
            };
            //Todo: Deprecate flags
            uint32_t flags;                 /**< Deprecated: Alternate way to set bits using message flags */
        };
        uint32_t identifier;                /**< 11 or 29 bit identifier */
        uint8_t data_length_code;           /**< Data length code */
        uint8_t data[TWAI_FRAME_MAX_DLC];    /**< Data bytes (not relevant in RTR frame) */
    } twai_message_t;

    twai_message_t tx_msg =  {.data_length_code = 4, .identifier = MSG_ID, .self = 1};


    unsigned int value = 0;

    for (int i = 0; i < 10; i++) {
        //Transmit messages using self reception request
        value = rand() % 2 +1;
        tx_msg.data[2] = (value >> 8) & 0xFF;
        tx_msg.data[3] = (value) & 0xFF;
        printf("value = %d \n", value);
       printf("Msg received - Data = %d %d %d %d \n", tx_msg.data[0], tx_msg.data[1], tx_msg.data[2], tx_msg.data[3]);
    }

    return 0;

}