/*
 * This doubly linked list is inspired by GNU/Linux kernel source code.
 */

#ifndef _LIST_H
#define _LIST_H

#include <stdint.h>
#include <stddef.h>

struct list_node {
	struct list_node * prev;
	struct list_node * next;
};

/*
 * OFFSET_OF - return the offset of the member in the struct named type
 * @type:		the type of the struct
 * @member:		the name of the member within the struct
 */
#define OFFSET_OF(type, member)														\
	((size_t) &(((type *) 0)->member))

/*
 * CONTAINER_OF - return the address of the struct containing the member
 * @type:		the type of the struct
 * @ptr:		the pointer of the member
 * @member:		the name of the member within the struct
 */
#define CONTAINER_OF(type, ptr, member)												\
	((type *)((uint8_t *)(ptr) - offsetof(type, member)))

#define __CONTAINER_OF(type, ptr, member) ({											\
	const typeof( ((type *)0)->member ) *__mptr = (ptr);							\
	(type *)( (char *)__mptr - offsetof(type,member) );})

#define LIST_NODE(name)															\
	struct list_node name

#define LIST_HEAD(name)																\
	struct list_node name

#define LIST_INIT(head)																\
	do {																			\
		(head)->prev = head;														\
		(head)->next = head;														\
	} while (0)

#define LIST_EMPTY(head)															\
	((head)->next == head)

/*
 * LIST_NEXT - return the address of the next struct containing the node
 * @ptr:		the pointer of the current container struct
 * @node:		the name of the struct list_node within the struct
 */
#define LIST_NEXT(ptr, node)														\
	CONTAINER_OF(__typeof__(*ptr), (ptr)->node.next, node)

/*
 * LIST_FIRST - return the address of the first node of the list
 * @type:		the type of the struct
 * @head:		the pointer of the list head
 * @node:		the name of the struct list_node within the struct
 *
 * Note, that list is expected to be not empty.
 */
#define LIST_FIRST(type, head, node)												\
	CONTAINER_OF(type, (head)->next, node)

/*
 * LIST_LAST - return the address of the last node of the list
 * @type:		the type of the struct
 * @head:		the pointer of the list head
 * @node:		the name of the struct list_node within the struct
 *
 * Note, that list is expected to be not empty.
 */
#define LIST_LAST(type, head, node)													\
	CONTAINER_OF(type, (head)->prev, node)

/*
 * LIST_FOREACH - iterate over a list
 * @var:		the loop cursor pointing to the current node
 * @head:		the head of the list
 * @node:		the name of the struct list_node within the struct
 */
#define LIST_FOREACH(var, head, node)												\
	for ((var) = LIST_FIRST(__typeof__(*var), head, node);							\
		&((var)->node) != head;														\
		(var) = LIST_NEXT(var, node))

static void inline __list_add(
		struct list_node * new,
		struct list_node * prev,
		struct list_node * next);

/*
 * list_insert_after - add a new node after known node
 * @new: new node to be added
 * @prev: list node to add it after
 */
static void inline list_insert_after(struct list_node * new, struct list_node * prev);

static void inline list_add_tail(struct list_node * new, struct list_node * head);

static void inline list_add_first(struct list_node * new, struct list_node * head);

/*
 * Delete a list node by making the prev/next entries
 * point to each other.
 * 
 * This is only for internal list manipulation where we know the prev/next entries
 * already!
 */
static void inline __list_del(struct list_node * prev, struct list_node * next);

/*
 * list_del - deletes node from list.
 * @old: the element to delete from the list.
 */
static void inline list_del(struct list_node * old);

static void inline list_move_after(struct list_node * src, struct list_node * dest);

static void inline list_replace(struct list_node * new, struct list_node * old);


static void inline __list_add(
		struct list_node * new,
		struct list_node * prev,
		struct list_node * next)
{
	new->prev = prev;
	new->next = next;
	prev->next = new;
	next->prev = new;
}

static void inline list_insert_after(struct list_node * new, struct list_node * prev)
{
	__list_add(new, prev, prev->next);
}

static void inline list_add_tail(struct list_node * new, struct list_node * head)
{
	list_insert_after(new, head->prev);
}

static void inline list_add_first(struct list_node * new, struct list_node * head)
{
	list_insert_after(new, head);
}

static void inline __list_del(struct list_node * prev, struct list_node * next)
{
	prev->next = next;
	next->prev = prev;
}

static void inline list_del(struct list_node * old)
{
	__list_del(old->prev, old->next);
	old->prev = NULL;
	old->next = NULL;
}

static void inline list_move_after(struct list_node * src, struct list_node * dest)
{
	list_del(src);
	list_insert_after(src, dest);
}

static void inline list_replace(struct list_node * new, struct list_node * old)
{
	__list_add(new, old->prev, old->next);
}

#endif
