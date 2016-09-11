#define __C_DECRYPTOR
#include "decryptor.h"
#include "logger.h"

int check_divafile(uint8_t* file, uint32_t size) { //sub_560738
	const char DIVAFILE_MAGIC_NUMBER[] = { 'D', 'I', 'V', 'A', 'F', 'I', 'L', 'E' };

	if (size < 16) {	// 0x10 == 16
		return 0;
	}

	const uint64_t*pmagic_num = (const uint64_t*)DIVAFILE_MAGIC_NUMBER;	// magic_number pointer
	uint32_t file_payload_len_1 = *((int32_t*)(file + 8));	// offset 0x8, file_size_1, store in little-endian
	uint32_t file_payload_len_2 = *((int32_t*)(file + 12));	// offset 0xc, file_size_2, store in little-endian
	uint32_t file_payload_len1_bit_reorder;
	uint32_t file_payload_len2_bit_reorder;
	ENDIAN_REORDER(file_payload_len1_bit_reorder, file_payload_len_1);
	ENDIAN_REORDER(file_payload_len2_bit_reorder, file_payload_len_2);

	if (*((int64_t*)file) != *(pmagic_num)) // compare 'DIVAFILE'
		return 0;
	//if (((file_payload_len1_bit_reorder + 0xf) & (~0xf)) != file_payload_len1_bit_reorder)	// check file size 16-byte align
	if (!is_16_aligned(file_payload_len1_bit_reorder))
		return 0;
	if (file_payload_len1_bit_reorder < file_payload_len2_bit_reorder)	// compare two redundant value
		return 0;
	if ((file_payload_len1_bit_reorder + 16) > size)	// payload + sizeof(header) == size?
		return 0;
	return 1;
}

int sub_5607DC(uint8_t *p_payload, uint32_t len_payload) {
	uint8_t buffer[0x100];
	if (p_payload == NULL || len_payload == 0)
		return 0;
	if (!is_16_aligned(len_payload))
		return 0;
	// logger_log(" - checkpoint 2.1\n");
	if (sub_6BAD34(aFileAccessDeny, buffer) != 0)
		return 0;
	// logger_log(" - checkpoint 2.2\n");
	if (sub_6BB5D0(p_payload, p_payload, len_payload, buffer) == 0)
		return 1;
	else
		return 0;
}

int decrypt_divafile(uint8_t *p_file, uint32_t size) {
	if (check_divafile(p_file, size) == 0) {
		logger_log("\t- invalid divafile.\n");
		return 1;
	}
	else {
		logger_log("\t- valid divafile.\n");
	}


	uint32_t file_payload_len_1 = *((int32_t*)(p_file + 8));	// offset 0x8, file_size_1, store in little-endian
	uint32_t file_payload_len_2 = *((int32_t*)(p_file + 12));	// offset 0xc, file_size_2, store in little-endian
	uint32_t file_payload_len1_reorder;
	uint32_t file_payload_len2_reorder;

	ENDIAN_REORDER(file_payload_len1_reorder, file_payload_len_1);
	ENDIAN_REORDER(file_payload_len2_reorder, file_payload_len_2);
	uint8_t *p_payload = p_file + 16;
	*((uint32_t*)(p_file + 0x8)) = file_payload_len1_reorder;
	*((uint32_t*)(p_file + 0xc)) = file_payload_len2_reorder;
	// logger_log(" - checkpoint 1.1\n");
	if (sub_5607DC(p_payload, file_payload_len1_reorder) == 0)
		return 0;
	// logger_log(" - checkpoint 1.2\n");
	sub_637434(p_file, p_payload, file_payload_len2_reorder);	// ASM Function
																// logger_log(" - checkpoint 1.3\n");
	if (size <= file_payload_len2_reorder)
		return 1;
	// logger_log(" - checkpoint 1.4\n");
	sub_642238(p_payload + file_payload_len2_reorder,			// ASM Function
		0,
		size - file_payload_len2_reorder);
	// logger_log(" - checkpoint 1.5\n");
	return 1;
}
