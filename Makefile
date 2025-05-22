# Run `make` for these targets
all: renv render

# Restore R dependencies as specifed in renv.lock
renv:
	Rscript -e "renv::restore()"

# Render Quarto source documents
render: index.qmd _quarto.yml
	quarto render

# Test everything
test:
	make clean
	git clone ./ test && cd test && make

# Clean test outputs
clean:
	rm -rf test/

# These targets don't have dependencies (always run)
.PHONY: clean renv test
