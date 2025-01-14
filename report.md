# HW2 Report

Peter Dobbins

## Tools Installed

![Link to CMake Version Screenshot](screenshots/cmake.png)

![Link to pandoc Version Screenshot](screenshots/pandoc.png)

![Link to pdfTeX Screenshot](screenshots/pdflatex.png)

![Link to clang-format Version Screenshot](screenshots/clang-format.png)

## C++ Source Files

```cpp
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
```

## Compiling

![Link to CMake Build Screenshot](screenshots/cmake_build.png)

## Custom Makefile

```makefile
SOURCES = src/main.cpp

format:
	clang-format --style=Google -i ${SOURCES}

verify_format:
	clang-format --style=Google --dry-run --Werror -i ${SOURCES}

report.pdf: report.md
	pandoc --from=markdown --to=latex --toc -o $@ $^ --shift-heading-level-by -1 --number-sections
```

![Link to Makefile Run Screenshot](screenshots/makefile.png)
