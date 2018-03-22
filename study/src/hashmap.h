/*
 * This doubly linked hlist is inspired by GNU/Linux kernel source code.
 */

#ifndef _HASHMAP_H
#define _HASHMAP_H

#include "list.h"

struct hlist_node {
	struct hlist_node *next;
	struct hlist_node **pprev;
};

struct hlist_head {
	struct hlist_node *first;
};

#define HLIST_HEAD(name)														\
	struct hlist_head name

#define HLIST_NODE(name)														\
	struct hlist_node name

#define HLIST_INIT(head)														\
	do {																		\
		(head)->first = NULL;													\
	} while (0)

#define HLIST_EMPTY(head)														\
	((head)->first == NULL)

#define HLIST_NEXT(ptr, node)													\
	CONTAINER_OF(__typeof__(*ptr), (ptr)->node.next, node)

#define HLIST_NEXT_SAFE(ptr, node)												\
	((ptr)->node.next ? HLIST_NEXT(ptr, node) : NULL)

#define HLIST_FIRST(type, head, node)											\
	CONTAINER_OF(type, (head)->first, node)

#define HLIST_FIRST_SAFE(type, head, node)										\
	((head)->first ? HLIST_FIRST(type, head, node) : NULL)

#define HLIST_FOREACH(var, head, node)											\
	for ((var) = HLIST_FIRST_SAFE(__typeof__(*var), head, node);				\
		var;																	\
		(var) = HLIST_NEXT_SAFE(var, node))

static void inline hlist_add_before(struct hlist_node *new, struct hlist_node *next)
{
	new->next = next;
	new->pprev = next->pprev;
	*(next->pprev) = new;
	next->pprev = &new->next;
}

static void inline hlist_add_first(struct hlist_node *new, struct hlist_head *head)
{
	new->next = head->first;
	head->first = new;
	new->pprev = &head->first;
	if (new->next)
		new->next->pprev = &new->next;
}

static void inline hlist_add_behind(struct hlist_node *new, struct hlist_node *prev)
{
	new->next = prev->next;
	prev->next = new;
	new->pprev = &prev->next;
	if (new->next)
		new->next->pprev = &new->next;
}

/*
 * So the pointer of the pointer of the struct hlist_node, the double pointer feild
 * pprev in the struct hlist_node, makes this delete function avoid to determine the
 * previous node of the node @old is the head of the hash list or not, which is hard
 * to program.
 */
static void inline hlist_del(struct hlist_node *old)
{
	(*(old->pprev))->next = old->next;
	if (old->next)
		old->next->pprev = old->pprev;
}

#define HASH_BIN(code, length)													\
	(code & (length - 1))

int hashcode(const char *str)
	__attribute__((pure, nonnull(1)));

#endif
