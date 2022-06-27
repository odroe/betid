/// Count Leading Zeroes 32
///
/// function returns the number of leading zero bits in the 32-bit binary representation of a number.
int clz32(int value) {
  if (value == 0) {
    return 32;
  }
  int count = 0;
  while ((value & 0x80000000) == 0) {
    value <<= 1;
    count++;
  }
  return count;
}
