.PHONY: help
help: ## Print a description of all rules.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'

.PHONY: serve
serve: ## Start a local web server and serve the website.
	@bundler exec jekyll serve
