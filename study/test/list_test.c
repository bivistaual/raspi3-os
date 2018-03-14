#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#include "../src/list.h"

#define ID(consumer)															\
	((consumer)->id)

#define NODE_ADDR(consumer)														\
	(&(consumer)->node)

#define new(type, i)															\
	((ptemp = (type *)malloc(sizeof(type))), ID(ptemp) = i, ptemp)

typedef struct {
	int id;
	LIST_ENTRY(node);
}	Consumer;

int main(void)
{
	Consumer * ptemp;

	LIST_HEAD(list);
	LIST_INIT(&list);
	
	assert(LIST_EMPTY(&list));

	list_add_first(NODE_ADDR(new(Consumer, 0)), &list);

	assert(ID(LIST_FIRST(Consumer, &list, node)) == 0);
	assert(!LIST_EMPTY(&list));

	list_del(NODE_ADDR(LIST_FIRST(Consumer, &list, node)));

	assert(LIST_EMPTY(&list));

	list_add_first(NODE_ADDR(new(Consumer, 1)), &list);
	
	assert(ID(LIST_LAST(Consumer, &list, node)) == 1);
	assert(ID(LIST_FIRST(Consumer, &list, node)) == 1);
	assert(!LIST_EMPTY(&list));

	list_add_first(NODE_ADDR(new(Consumer, 2)), &list);
	
	assert(ID(LIST_LAST(Consumer, &list, node)) == 1);
	assert(ID(LIST_FIRST(Consumer, &list, node)) == 2);

	list_del(NODE_ADDR(LIST_LAST(Consumer, &list, node)));

	assert(ID(LIST_LAST(Consumer, &list, node)) == 2);
	assert(ID(LIST_FIRST(Consumer, &list, node)) == 2);

	list_insert_after(NODE_ADDR(new(Consumer, 3)), 
			NODE_ADDR(LIST_LAST(Consumer, &list, node)));

	assert(ID(LIST_LAST(Consumer, &list, node)) == 3);

	list_insert_after(NODE_ADDR(new(Consumer, 4)),
			NODE_ADDR(LIST_FIRST(Consumer, &list, node)));
	list_del(NODE_ADDR(LIST_FIRST(Consumer, &list, node)));

	assert(ID(LIST_FIRST(Consumer, &list, node)) == 4);


	return 0;
}
