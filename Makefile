# Shortcuts for the scripts in scripts/. Run from the repository root.

R := Rscript

.PHONY: help setup new import render clean

help:
	@grep -E '^[a-z]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-8s\033[0m %s\n", $$1, $$2}'

setup:  ## Install the locked package versions
	$(R) -e 'renv::restore()'

new:    ## Start an assignment -- make new ID=02-wrangle TITLE="Assignment 2: Wrangle"
	$(R) scripts/new-assignment.R $(ID) $(if $(TITLE),"$(TITLE)",)

import: ## Scaffold from a handout -- make import FILE=~/Downloads/ass2.html ID=02-wrangle
	$(R) scripts/import-assignment.R $(FILE) $(ID) $(if $(TITLE),"$(TITLE)",)

render: ## Knit to output/ -- make render, or make render ID=01-explore
	$(R) scripts/render.R $(ID)

clean:  ## Remove rendered output and knitr leftovers
	rm -rf output/*.html
	find assignments -type d \( -name '*_files' -o -name '*_cache' \) -exec rm -rf {} +
