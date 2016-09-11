#define __C_UTILS
#include "utils.h"
#include "logger.h"

#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>

uint8_t* get_file_content(const char *path, size_t *len) {
	uint8_t *p_buffer = NULL;
	size_t file_len = 0;
	FILE *fp = fopen(path, "r");

	if (fp == NULL)
		return NULL;

	fseek(fp, 0, SEEK_END);
	file_len = ftell(fp);
	rewind(fp);
	// Some memory access violation bug still remain in dumped PPC ASM code. So currently bigger file buffer(x2) is allocated to temporary make tool work.
	p_buffer = (uint8_t*)malloc(sizeof(uint8_t) * file_len * 2);
	if (p_buffer == NULL) {
		fclose(fp);
		logger_log("Fatal error: out of memory, terminated.\n");
		exit(1);
	}

	file_len = fread(p_buffer, sizeof(uint8_t), file_len, fp);
	fclose(fp);

	*len = file_len;
	return p_buffer;
}

int end_with(const char * str, const char * end) {
	int result = 0;

	if (str != NULL && end != NULL) {
		int l1 = strlen(str);
		int l2 = strlen(end);
		if (l1 >= l2) {
			if (strcmp(str + l1 - l2, end) == 0) {
				result = 1;
			}
		}
	}
	return result;
}