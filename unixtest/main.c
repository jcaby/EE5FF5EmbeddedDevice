#define _POSIX_C_SOURCE 200809L

#include <inttypes.h>
#include <math.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>

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
    uint8_t data[8];    /**< Data bytes (not relevant in RTR frame) */
} twai_message_t;

long long convert(int n) {
    long long bin = 0;
    int rem, i = 1, step = 1;
    while (n != 0) {
        rem = n % 2;
        //printf("Step %d: %d/2, Remainder = %d, Quotient = %d\n", step++, n, rem, n / 2);
        n /= 2;
        bin += rem * i;
        i *= 10;
    }
    return bin;
}

int main (){
    int value = 0;
    twai_message_t tx_msg;
    for (int i = 0; i < 16; i++) {
        value = rand() % 800;
        printf("Value: %d in binary: %llu \n", value, convert(value));
        tx_msg.data[0] = (((value >> 8) & 0xFF) << 6 & 0xFF) + i;
        printf("data[0] %llu \n",convert(tx_msg.data[0]));
        printf("data[0] id: %d in binary: %llu \n",tx_msg.data[0], convert(tx_msg.data[0]));
        printf("data[0] multiplier: %d in binary: %llu \n",(tx_msg.data[0] >> 6 & 0xFF), convert((tx_msg.data[0] >> 6 & 0xFF)));
        tx_msg.data[1] = (value) & 0xFF;
        printf("data[1] measurement: %d in binary: %llu \n",tx_msg.data[1], convert(tx_msg.data[1]));
        printf("Calculated value : %d \n",(tx_msg.data[0] >> 6 & 0xFF)*256+tx_msg.data[1]);
        printf("\n");


    }
    return 0;
}

