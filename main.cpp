#include <iostream>
#include <magic.h>

int main() {
  magic_t m = magic_open(MAGIC_MIME_TYPE);
  magic_load(m, nullptr);
  const char *mime = magic_file(m, "sw_d");
  std::cout << mime << std::endl;
  magic_close(m);
  return 0;
}
