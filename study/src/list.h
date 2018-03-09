/*
 * This doubly linked list is inspired by GNU/Linux kernel source code.
 */

#ifndef _LIST_H
#define _LIST_H

#include <stdint.h>
#include <stddef.h>

struct list_entry {
	struct list_entry * prev;
	struct list_entry * next;
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
	((type *)((uint8_t *)(ptr) - OFFSET_OF(type, member)))

#define LIST_ENTRY(name)															\
	struct list_entry name

#define LIST_HEAD(name)																\
	struct list_entry name

#define LIST_INIT(head)																\
	do {																			\
		(head)->prev = head;														\
		(head)->next = head;														\
	} while (0)

#define LIST_EMPTY(head)															\
	((head)->next == head)

/*
 * LIST_NEXT - return the address of the next struct containing the entry
 * @ptr:		the pointer of the current container struct
 * @entry:		the name of the struct list_entry within the struct
 */
#define LIST_NEXT(ptr, entry)														\
	CONTAINER_OF(__typeof__(*ptr), (ptr)->entry.next, entry)

/*
 * LIST_FIRST - return the address of the first node of the list
 * @type:		the type of the struct
 * @head:		the pointer of the list head
 * @entry:		the name of the struct list_entry within the struct
 *
 * Note, that list is expected to be not empty.
 */
#define LIST_FIRST(type, head, entry)												\
	CONTAINER_OF(type, (head)->next, entry)

/*
 * LIST_LAST - return the address of the last node of the list
 * @type:		the type of the struct
 * @head:		the pointer of the list head
 * @entry:		the name of the struct list_entry within the struct
 *
 * Note, that list is expected to be not empty.
 */
#define LIST_LAST(type, head, entry)												\
	CONTAINER_OF(type, (head)->prev, entry)

/*
 * LIST_FOREACH - iterate over a list
 * @var:		the loop cursor pointing to the current node
 * @head:		the head of the list
 * @entry:		the name of the struct list_entry within the struct
 */
#define LIST_FOREACH(var, head, entry)												\
	for ((var) = LIST_FIRST(__typeof__(*var), head, entry);						\
		&((var)->entry) != head;													\
		(var) = LIST_NEXT(var, entry))

/*
 * Insert a new entry between two known consecutive entries.
 *
 * This is only for internal list manipulation where we know
 * the prev/next entries already!
 */
static void inline __list_add(
		struct list_entry * new,
		struct list_entry * prev,
		struct list_entry * next)
{
	new->prev = prev;
	new->next = next;
	prev->next = new;
	next->prev = new;
}

/*
 * list_insert_after - add a new entry after known entry
 * @new: new entry to be added
 * @prev: list entry to add it after
 */
static void inline list_insert_after(struct list_entry * new, struct list_entry * prev)
{
	__list_add(new, prev, prev->next);
}

static void inline list_add_tail(struct list_entry * new, struct list_entry * head)
{
	list_insert_after(new, head->prev);
}

static void inline list_add_first(struct list_entry * new, struct list_entry * head)
{
	list_insert_after(new, head);
}

/*
 * Delete a list entry by making the prev/next entries
 * point to each other.
 * 
 * This is only for internal list manipulation where we know the prev/next entries
 * already!
 */
static void inline __list_del(struct list_entry * prev, struct list_entry * next)
{
	prev->next = next;
	next->prev = prev;
}

/*
 * list_del - deletes entry from list.
 * @old: the element to delete from the list.
 */
static void inline list_del(struct list_entry * old)
{
	__list_del(old->prev, old->next);
	old->prev = NULL;
	old->next = NULL;
}

static void inline list_move_after(struct list_entry * src, struct list_entry * tgt)
{
	list_del(src);
	list_insert_after(src, tgt);
}

static void inline list_replace(struct list_entry * new, struct list_entry * old)
{
	__list_add(new, old->prev, old->next);
}

#endif
