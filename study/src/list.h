#define LIST_HEAD(name, type)													\
	struct name {																\
		type * head;															\
	}

#define LIST_ENTRY(type)														\
	struct {																	\
		type * prev;															\
		type * next;															\
	}

#define LIST_INIT(plist)														\
	do {																		\
		(plist)->head = NULL;													\
	} while (0)

#define LIST_EMPTY(plist)														\
	((plist)->head == NULL)

#define LIST_NEXT(element, field)												\
	((element)->field.next)

#define LIST_FIRST(plist)														\
	((plist)->head)

#define LIST_FOREACH(var, plist, field)											\
	for ((var) = LIST_FIRST(plist);												\
		(var);																	\
		(var) = LIST_NEXT(var, field))

#define LIST_INSERT_AFTER(, field)
