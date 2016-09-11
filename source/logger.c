#define __C_LOGGER
#include "logger.h"

void logger_initialize() {
	if (!__logger_fp) {
		__logger_fp = fopen(__LOG_FILE_PATH, "w");
	}
}

void logger_flush() {
	if (__logger_fp) {
		fflush(__logger_fp);
	}
}

void logger_finalize() {
	if (__logger_fp) {
		fclose(__logger_fp);
		__logger_fp = NULL;
	}
}