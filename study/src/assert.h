#ifndef _ASSERT_H
#define _ASSERT_H

#ifdef NDEBUG
# define assert(exp)
#else
# define assert(exp)																\
	(void)((exp) || (__assert(__FILE__, __LINE__, #exp), 0))
#endif

void __assert(const char *, int, const char *);

#endif
