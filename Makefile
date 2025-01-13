SOURCES = src/main.cpp

format:
	clang-format --style=Google -i ${SOURCES}

verify_format:
	clang-format --style=Google --dry-run --Werror -i ${SOURCES}

report.pdf: report.md
	pandoc --from=markdown --to=latex --toc -o $@ $^ --shift-heading-level-by -1 --number-sections
