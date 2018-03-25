#include "path.h"
#include "malloc.h"
#include "string.h"
#include "console.h"

#define PATH_PART_MAX	128
#define PATH_CWD_MAX	1024

static char __cwd[PATH_CWD_MAX] = "/";

char *cwd(void)
{
	return __cwd;
}

char *to_abs_path(char *abs, char *p)
{
	if (p[0] != '/') {
		strcpy(abs, cwd());
		strcat(abs, "/");
	}

	return strcat(abs, p);
}

char *path_simplify(char *path)
{
	char *stack[PATH_PART_MAX];
	int top = -1;
	char *path_part;
	char work[PATH_CWD_MAX];
	
	strcpy(work, path);

	path_part = strtok(work, "/");
	while (path_part != NULL) {
		// a ../ directory. pop out and abandon a path part if stack is not empty
		if (!strcmp(path_part, ".."))
			if (top >= 0)
				top--;

		// NOT a ./ directory. push path part into stack
		if (strcmp(path_part, "."))
			stack[++top] = path_part;

		path_part = strtok(NULL, "/");
	}

	path[0] = '\0';
	if (top == -1)
		strcpy(path, "/");
	else
		for (int i = 0; i <= top; i++) {
			strcat(path, "/");
			strcat(path, stack[i]);
//			DEBUG("path part = %s\n", path);
		}
	
//	DEBUG("path = %s\n", path);

	return path;
}

char *path_filte(char *abs, char *p) {
	return path_simplify(to_abs_path(abs, p));
}
