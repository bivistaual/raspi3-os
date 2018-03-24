#ifndef _PATH_H
#define _PATH_H

char *cwd(void);

char *to_abs_path(char *abs, char *p);

/*
 * Simplify the path by eliminate ../ and ./ entry in the path.
 *
 * NOTE: The path MUST be a absolute path!
 */
char *path_simplify (char *path);

char *path_filte(char *abs, char *p);

#endif
