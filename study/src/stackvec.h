#ifndef _STACKVEC_H
#define _STACKVEC_H

/* 
 * Create a new STACKVEC whose element type is 'type' and capacity is 'cap'.
 */
 
#define STACKVEC(type, name, cap)												\
	do {																		\
		struct {																\
			type element[cap];													\
			unsigned capacity;													\
			unsigned length;													\
		} name;																	\
		name.capacity = cap;													\
	} while (0)


#define STACKVEC_TYPEOF(type, cap)												\
	(struct {																	\
		type element[cap];														\
		unsigned capacity;														\
		unsigned length;														\
	})

/*
 * Get the number of elements in the stackvec 'name'.
 */

#define STACKVEC_LEN(name)														\
	((name).length)

/*
 * Get the number of elements the stackvec 'name' can hold.
 */

#define STACKVEC_CAP(name)														\
	((name).capacity)

/*
 * Returns true if the stackvec 'name' is empty.
 */

#define STACKVEC_EMPTY(name)													\
	(STACKVEC_LEN(name) == 0)

/*
 * Returns true if the stackvec 'name' is full.
 */

#define STACKVEC_FULL(name)														\
	(STACKVEC_LEN(name) == STACKVEC_CAP(name))

/* 
 * Pop out the recent element of the stackvec 'name'. The macro returns NULL if
 * the stackvec is empty.
 */

#define STACKVEC_POP(name)														\
	(STACKVEC_EMPTY(name) ? NULL : (name).element[--(name).length])

/* 
 * Push the element 'ele' into the stackvec 'name'. The macro returns NULL if
 * the stackvec is already full.
 */

#define STACKVEC_PUSH(name, ele)												\
	(STACKVEC_FULL(name) ? NULL : (name).element[(name).length++] = ele;)

/*
 * Returns all of the elements in the vector.
 */

#define STACKVEC_VEC(name)														\
	((name).element)

#endif

