/*
S117 @ Bitman Lab.

DIVAFILE decryptor / (C) 2016
*/


#include "decryptor.h"
#include "logger.h"
#include "utils.h"

#include <stdio.h>
#include <ppu-lv2.h>
#include <dirent.h>

#define SRC_DIR "/dev_usb000/divafile_decryptor/source"
#define DST_DIR "/dev_usb000/divafile_decryptor/decrypted"

static char g_path_buffer_in[MAXPATHLEN + 1];
static char g_path_buffer_out[MAXPATHLEN + 1];


static int file_filter(const char* name) {
	// if (end_with(name, ".dsc"))
	// 	return 1;
	// else if (end_with(name, ".ppr"))
	// 	return 1;
	// return 0;
	return 1;
}

static void decrypt(const char* input_file_path, const char* output_file_path) {
	// const char* input_file_path = "/dev_usb000/pv_700_normal.dsc";
	// const char* dsc_decrypted_path = "/dev_usb000/pv_700_normal.decrypted.dsc";

	uint8_t* p_file;
	size_t file_size = 0;
	

	logger_log("\t- loading file \"%s\"...\n", input_file_path);
	p_file = (uint8_t*)get_file_content(input_file_path, &file_size);
	logger_log("\t- file loaded, size: %lu, addr: %p\n", file_size, p_file);

	logger_log("\t- decrypting...\n");
	int rtnval = decrypt_divafile(p_file, file_size);
	if(rtnval == -1)
		return;
	logger_log("\t- decrypted, rtnval: %d\n", rtnval);



	logger_log("\t- writing to \"%s\"...\n", output_file_path);
	FILE* fp_dsc_decrypted = fopen(output_file_path, "w");
	fwrite(p_file, 1, file_size, fp_dsc_decrypted);
	fflush(fp_dsc_decrypted);
	fclose(fp_dsc_decrypted);
	logger_log("\t- finished.\n");

	free(p_file);
}

int main_real(int argc, char * argv[]) {
	struct dirent *ptr;
	DIR *dir_in;
	DIR *dir_out;

	dir_in = opendir(SRC_DIR);
	dir_out = opendir(DST_DIR);

	if (dir_in == NULL) {
		logger_log("Fatal error: Open dir %s fail, terminated.\n", SRC_DIR);
		exit(1);
	}
	else {
		logger_log("Open dir %s success.\n", SRC_DIR);
	}

	
	if (dir_out == NULL) {
		logger_log("Fatal error: Can't open output dir: %s, terminated.", DST_DIR);
		exit(1);
	}
	

	while ((ptr = readdir(dir_in)) != NULL) {
		//skip hided item '.' '..'
		if (ptr->d_name[0] == '.')
			continue;
		else if (file_filter(ptr->d_name)) {
			snprintf(g_path_buffer_in, MAXPATHLEN + 1, "%s/%s", SRC_DIR, ptr->d_name);
			snprintf(g_path_buffer_out, MAXPATHLEN + 1, "%s/%s", DST_DIR, ptr->d_name);
			logger_log("Processing %s -> %s\n", g_path_buffer_in, g_path_buffer_out);
			decrypt(g_path_buffer_in, g_path_buffer_out);
		}

	}

	closedir(dir_in);
	closedir(dir_out);
	return 0;
}

int main(int argc, char * argv[]) {
	int rtn_val;

	logger_initialize();
	rtn_val = main_real(argc, argv);
	logger_finalize();
	return rtn_val;
}
