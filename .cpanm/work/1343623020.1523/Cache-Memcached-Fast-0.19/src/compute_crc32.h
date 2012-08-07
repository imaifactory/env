/*
  This file was generated with gencrc32.pl.

  Do not edit.
*/

#ifndef COMPUTE_CRC32_H
#define COMPUTE_CRC32_H 1

#include <stddef.h>


extern const unsigned int crc32lookup[];


#define compute_crc32(s, l)                                      \
  compute_crc32_add(0x00000000U, (s), (l))

static inline
unsigned int
compute_crc32_add(unsigned int crc32, const char *s, size_t len)
{
  const char *end = s + len;

  crc32 = ~crc32;

  while (s < end)
    {
      unsigned int index = (crc32 ^ (unsigned char) *s) & 0x000000ffU;
      crc32 = (crc32 >> 8) ^ crc32lookup[index];
      ++s;
    }

  return (~crc32);
}


#endif /* ! COMPUTE_CRC32_H */
