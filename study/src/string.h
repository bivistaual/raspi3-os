#ifndef _STRING_H
#define _STRING_H

#include <stddef.h>

/* Copy N bytes of SRC to DEST.  */
extern void *memcpy (void *__restrict __dest, const void *__restrict __src, size_t __n)
	__attribute__((nonnull(1, 2)));

/* Return the length of S.  */
extern size_t strlen (const char *__s)
	__attribute__((pure, nonnull(1)));

/* Compare S1 and S2.  */
extern int strcmp (const char *__s1, const char *__s2)
	__attribute__((pure, nonnull(1, 2)));

/* Copy SRC to DEST.  */
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
	__attribute__((nonnull(1, 2)));

/* Copy no more than N characters of SRC to DEST.  */
extern char *strncpy (char *__restrict __dest, const char *__restrict __src, size_t __n)
	__attribute__((nonnull(1, 2)));

extern char *utf16toascii(char *__restrict __dest, const char *__restrict __src)
	__attribute__((nonnull(1, 2)));

extern char *asciitoutf16(char *__restrict __dest, const char *__restrict __src)
	__attribute__((nonnull(1, 2)));

extern char *strcat (char *__restrict __dest, const char *__restrict __sre)
	__attribute__((nonnull(1, 2)));

/* Divide S into tokens separated by characters in DELIM.  */
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
	__attribute__((nonnull(2)));

/* Set N bytes of S to C.  */
extern void *memset (void *__s, int __c, size_t __n)
	__attribute__((nonnull(1)));

#endif
