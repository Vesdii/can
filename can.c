#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

int main(int argc, char **argv) {
	char *candir;

	candir = getenv("CANDIR");
	if (!candir)
		candir = strcat(getenv("HOME"), "/.trash");
	mkdir(candir, 0755);

	/* parse args
	 * set trash option
	 * 
	 * empty trash if set
	 * move files */

	return 0;
}
