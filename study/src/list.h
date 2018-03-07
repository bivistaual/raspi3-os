#ifndef _LIST_H
#define _LIST_H

struct list_entry {
	struct list_entry * prev;
	struct list_entry * next;
};

#define OFFSET_OF(type, member)													\
	((size_t) &(((type)* 0)->member))

#define FRIEND_OF(type, member, entry)											\
	((type *)((char *)entry - OFFSET_OF(type, entry)))->member

#define LIST_ENTRY(name)														\
	struct list_entry name

#define LIST_HEAD(name)															\
	struct list_entry name = {&(name), &(name)}

#define LIST_INIT(plist)														\
	do {																		\
		(plist)->prev = plist;													\
		(plist)->next = plist;													\
	} while (0)

#define LIST_EMPTY(plist)														\
	((plist)->next == plist)

#define LIST_NEXT(entry, field)													\
	((entry).next)

#define LIST_FIRST(plist)														\
	((plist)->head)

#define LIST_FOREACH(var, plist, field)											\
	for ((var) = LIST_FIRST(plist);												\
		(var);																	\
		(var) = LIST_NEXT(var, field))

#define LIST_INSERT_AFTER(ele, ele, field)										\
	do {																		\
		\	
	} while (0)

#endif
