/*
 * Memory Spaces Definitions.
 *
 * Need modifying for a specific board. 
 *
 * The values below can be addressed in further linker scripts
 * using functions like 'ORIGIN(RAM)' or 'LENGTH(RAM)'.
 */

MEMORY
{
  RAM (xrw) : ORIGIN = 0x20000000 - $(KLramSize) * 1024 / 4, LENGTH = $(KLramSize)K

  VECTORS (rx) : ORIGIN = 0x00000000, LENGTH = 0x00000400
  FCFROM (rx) : ORIGIN = 0x00000400, LENGTH = 0x00000010
  FLASH (rx) : ORIGIN = 0x00000410, LENGTH = $(KLflashSize) * 1024 - LENGTH(VECTORS) - LENGTH(FCFROM)
}

