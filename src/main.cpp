#include <iostream>

int main(int argc, char *argv[]) {
  for (int i = 1;; i++) {
    std::cout << argv[i];

    if (i + 1 >= argc) break;

    std::cout << " ";
  }

  std::cout << std::endl;

  return 0;
}
