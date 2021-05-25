//
// Created by Jérémy Caby on 03/05/2021.
//
#include <hal/twai_types.h>


#ifndef MQTT_TCP_LINKEDLIST_H
#define MQTT_TCP_LINKEDLIST_H

struct Node  {
    twai_message_t package;
    struct Node* next;
    struct Node* prev;
};

extern struct Node* head; // global variable - pointer to head node.

//Creates a new Node and returns pointer to it.
struct Node* get_new_node(twai_message_t x);

//Inserts a Node at head of doubly linked list
void insert_at_head(twai_message_t x);

//Inserts a Node at tail of Doubly linked list
void insert_at_tail(twai_message_t x);

//Prints all the elements in linked list in forward traversal order
void print_list();

//Prints all elements in linked list in reverse traversal order.
void reverse_print_list();

#endif //MQTT_TCP_LINKEDLIST_H
