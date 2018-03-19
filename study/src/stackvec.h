#ifndef _STACK_A_H
#define _STACK_A_H

/* 
 * Create a new STACK_A whose element type is 'type' and capacity is 'cap'.
 */
 
#define STACK_A(type, name, cap)												\
	do {																		\
		struct {																\
			type element[cap];													\
			unsigned capacity;													\
			unsigned length;													\
		} name;																	\
		name.capacity = cap;													\
	} while (0)

/*
 * Get the number of elements in the stackvec 'name'.
 */

#define STACK_A_LEN(name)														\
	((name).length)

/*
 * Get the number of elements the stackvec 'name' can hold.
 */

#define STACK_A_CAP(name)														\
	((name).capacity)

/*
 * Returns true if the stackvec 'name' is empty.
 */

#define STACK_A_EMPTY(name)													\
	(STACK_A_LEN(name) == 0)

/*
 * Returns true if the stackvec 'name' is full.
 */

#define STACK_A_FULL(name)														\
	(STACK_A_LEN(name) == STACK_A_CAP(name))

/* 
 * Pop out the recent element of the stackvec 'name'. The macro returns NULL if
 * the stackvec is empty.
 */

#define STACK_A_POP(name)														\
	(STACK_A_EMPTY(name) ? NULL : (name).element[--(name).length])

/* 
 * Push the element 'ele' into the stackvec 'name'. The macro returns NULL if
 * the stackvec is already full.
 */

#define STACK_A_PUSH(name, ele)												\
	(STACK_A_FULL(name) ? NULL : (name).element[(name).length++] = ele;)

/*
 * Returns all of the elements in the vector.
 */

#define STACK_A_VEC(name)														\
	((name).element)

#endif

