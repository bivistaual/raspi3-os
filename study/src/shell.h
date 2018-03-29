#define CMD_LIMIT		1024
#define ARG_CAPACITY	64
#define ARG_LIMIT		1024

typedef struct {
	char arg[ARG_CAPACITY][ARG_LIMIT];
	unsigned int capacity;
	unsigned int length;
}	Cmd;

int shell_start (char *);

int shell_exit (int);

char *read_cmd (char *);

int parse_cmd (Cmd *, char *);

int exe_cmd (Cmd *);

void echo (char (*)[ARG_LIMIT], unsigned int);

void display_bvstl (void);

void display_bivistaual (void);

void cd (char (*)[ARG_LIMIT], unsigned int);

void pwd (void);

void cat (char (*)[ARG_LIMIT], unsigned int);

void ls (char (*)[ARG_LIMIT], unsigned int);

void test_malloc (void);

void mem_init (void);
