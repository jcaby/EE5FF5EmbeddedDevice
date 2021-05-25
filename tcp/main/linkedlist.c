#include <argz.h>
/* Doubly Linked List implementation */
#include "linkedlist.h"
#include "mymqtt.h"
#include "mysntp.h"
#include "soc/timer_group_struct.h"
#include "soc/timer_group_reg.h"


struct Node* head; // global variable - pointer to head node.

//Creates a new Node and returns pointer to it.
struct Node* GetNewNode(twai_message_t x) {
    struct Node* newNode
            = (struct Node*)malloc(sizeof(struct Node));
    newNode->package = x;
    newNode->prev = NULL;
    newNode->next = NULL;
    return newNode;
}

//Inserts a Node at head of doubly linked list
void insert_at_head(twai_message_t x){
    struct Node* newNode = GetNewNode(x);
    if(head == NULL) {
        head = newNode;
        return;
    }
    head->prev = newNode;
    newNode->next = head;
    head = newNode;
}

//Inserts a Node at tail of Doubly linked list
void insert_at_tail(twai_message_t x){
    struct Node* temp = head;
    struct Node* newNode = GetNewNode(x);
    if(head == NULL) {
        head = newNode;
        return;
    }
    while(temp->next != NULL) temp = temp->next; // Go To last Node
    temp->next = newNode;
    newNode->prev = temp;
}

//Prints all the elements in linked list in forward traversal order
void print_list() {
    struct Node* temp = head;
    printf("\n");
    printf("Printed package list: \n");
    if (temp == NULL){
        printf("\n");
        printf ("              Empty list!");
    } else {
        while (temp != NULL) {
            printf("||| id: %d | value_H: %d | value_L: %d ||| Calculated actual value: %d \n", head->package.data[0], head->package.data[1], head->package.data[2],
                   ((head->package.data[1] << 4 & 0xFFF) + (head->package.data[2] >> 4 & 0xFF)));
                   temp = temp->next;
        }
    }
    printf("\n");
    printf("\n");
}

_Noreturn void publish_list_task(void *arg){
    uint16_t  actual_value;
    while (1) {
        TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
        TIMERG0.wdt_feed=1;
        TIMERG0.wdt_wprotect=0;
        while (head != NULL) {
            struct Node *temp = head;
            actual_value = ((head->package.data[1] << 4 & 0xFFF) + (head->package.data[2] >> 4 & 0xFF));
            printf("||| id: %d | value_H: %d | value_L: %d ||| Calculated actual value: %d \n", head->package.data[0], head->package.data[1], head->package.data[2],
                   actual_value);
            mqtt_publish((head->package.data[0]), actual_value, head->package.time);
            head = head->next;
            free(temp);
            if (head != NULL)
                head->prev = NULL;
            vTaskDelay(pdMS_TO_TICKS(100));
        }
    }
    vTaskDelete(NULL);
}

//Prints all elements in linked list in reverse traversal order.
void reverse_print_list(){
    struct Node* temp = head;
    if(temp == NULL) return; // empty list, exit
    // Going to last Node
    while(temp->next != NULL) {
        temp = temp->next;
    }
    // Traversing backward using prev pointer
    printf("Reverse: ");
    while(temp != NULL) {
        printf("%d %d %d %d \n",temp->package.data[0],temp->package.data[1],temp->package.data[2], ((temp->package.data[1]<<4 & 0xFFF)+(temp->package.data[2]>>4 & 0xFF)));
        temp = temp->prev;
    }
    printf("\n");
}
