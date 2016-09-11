#ifndef __H_LOGGER
#define __H_LOGGER

#include <stdio.h>

#ifndef NULL
 #define NULL ((void*)0)
#endif


#define __LOG_FILE_PATH "/dev_usb000/divafile_decryptor/log"
#define __LOGGER_BUFFER_MAX_SIZE 4096

#ifndef __C_LOGGER
 #define EXTERN extern
#else
 #define EXTERN
#endif

#ifndef __C_LOGGER
 extern char __logger_output_buffer[];
 extern FILE *__logger_fp;
#else
 char __logger_output_buffer[__LOGGER_BUFFER_MAX_SIZE];
 FILE *__logger_fp = NULL;
#endif

EXTERN void logger_initialize();
EXTERN void logger_flush();
EXTERN void logger_finalize();

#define logger_log(...) do { \
								if(__logger_fp){ \
									fwrite(__logger_output_buffer, \
										sizeof(char), \
										snprintf(__logger_output_buffer, \
											__LOGGER_BUFFER_MAX_SIZE, \
											__VA_ARGS__), \
										__logger_fp); \
									fflush(__logger_fp); \
								} \
							} while(0);

#undef EXTERN

#endif
