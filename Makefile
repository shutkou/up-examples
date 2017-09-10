
# Build index.
build:
	@echo "==> Building oss index"
	@sh index.sh oss > oss/Readme.md
	@echo "==> Building pro index"
	@sh index.sh pro > pro/Readme.md
	@echo "==> Building enterprise index"
	@sh index.sh enterprise > enterprise/Readme.md
.PHONY: build

# Test examples.
test:
	@sh test.sh
.PHONY: test

# Source LOC.
cloc:
	@cloc --exclude-dir=node_modules .
.PHONY: cloc
