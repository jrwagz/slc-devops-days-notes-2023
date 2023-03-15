.PHONY: lint markdown_lint

MARKDOWN_FILES:=$(shell find . -name "*.md")
markdown_lint:
	docker run --rm -v ${PWD}:${PWD} --workdir ${PWD} ghcr.io/igorshubovych/markdownlint-cli:latest $(MARKDOWN_FILES)

lint: markdown_lint