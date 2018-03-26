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
	
	//DEBUG("0.path = %s\n", path);

	path_part = strtok(work, "/");
	while (path_part != NULL) {
		
		//DEBUG("1.path_part = %s, top = 0x%x\n", path_part, top);
		
		// A ../ directory poped out and a top path part abandoned if
		// stack is not empty. A ./ directory will be ignored and a
		// regular directory will be pushed into stack

		if (!strcmp(path_part, "..")) {
			if (top >= 0)
				top--;
		} else if (strcmp(path_part, "."))
			stack[++top] = path_part;
		
		// a regular path part pushed into stack

		path_part = strtok(NULL, "/");
	}

	path[0] = '\0';
	if (top == -1)
		strcpy(path, "/");
	else
		for (int i = 0; i <= top; i++) {
			strcat(path, "/");
			strcat(path, stack[i]);
			//DEBUG("2.path part = %s\n", path);
		}
	
	//DEBUG("3.path = %s\n", path);

	return path;
}

char *path_filte(char *abs, char *p) {
	return path_simplify(to_abs_path(abs, p));
}
