#include <assert.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

#define __int8 char
#define __int64 long long
#include "../../../reconstructed/zte_tpd/trim.c"
#undef __int64
#undef __int8

static int oracle_isspace(unsigned char value)
{
  return value == '\t' || value == '\n' || value == '\v' ||
         value == '\f' || value == '\r' || value == ' ';
}

static char *oracle_trim(char *input)
{
  size_t start = 0;
  size_t length;

  if (!input)
    return NULL;
  while (oracle_isspace((unsigned char)input[start]))
    start++;
  input += start;
  if (!*input)
    return input;
  length = strlen(input);
  while (length && oracle_isspace((unsigned char)input[length - 1]))
    input[--length] = 0;
  return input;
}

static void assert_case(const unsigned char *input, size_t size)
{
  unsigned char candidate_buffer[129];
  unsigned char oracle_buffer[129];
  unsigned char original_buffer[129];
  char *candidate;
  char *oracle;

  assert(size + 1 < sizeof(candidate_buffer));
  candidate_buffer[0] = 0xa5;
  oracle_buffer[0] = 0xa5;
  memcpy(candidate_buffer + 1, input, size);
  memcpy(oracle_buffer + 1, input, size);
  candidate_buffer[size + 1] = 0;
  oracle_buffer[size + 1] = 0;
  memcpy(original_buffer, candidate_buffer, sizeof(original_buffer));

  candidate = trim((char *)(candidate_buffer + 1));
  oracle = oracle_trim((char *)(oracle_buffer + 1));
  assert(candidate == (char *)candidate_buffer + (oracle - (char *)oracle_buffer));
  assert(strcmp(candidate, oracle) == 0);
  assert(candidate_buffer[0] == 0xa5);
  assert(strcmp(candidate, oracle) == 0);
  for (size_t index = 0; index <= size + 1; index++) {
    size_t store_index = (size_t)(candidate - (char *)candidate_buffer) +
                         strlen(candidate);
    if (*candidate && index == store_index)
      assert(candidate_buffer[index] == 0);
    else
      assert(candidate_buffer[index] == original_buffer[index]);
  }
}

int main(void)
{
  static const unsigned char empty[] = "";
  static const unsigned char only_space[] = " \t\n\v\f\r ";
  static const unsigned char mixed[] = " \talpha beta\r\n ";
  static const unsigned char interior[] = "left  middle\tright";
  static const unsigned char non_ascii[] = {0x80, 'x', 0x81, 0};

  assert(trim(NULL) == NULL);
  assert_case(empty, 0);
  assert_case(only_space, sizeof(only_space) - 1);
  assert_case(mixed, sizeof(mixed) - 1);
  assert_case(interior, sizeof(interior) - 1);
  assert_case(non_ascii, sizeof(non_ascii) - 1);
  assert_case((const unsigned char *)"\t\tA\t\t", 5);
  assert_case((const unsigned char *)"A ", 2);
  puts("trim host oracle: PASS");
  return 0;
}
