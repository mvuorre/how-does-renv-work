# How does renv work?

My reproducible manuscripts are always some combination of [R](https://cran.r-project.org/), [Quarto](https://quarto.org/), [GNU Make](https://www.gnu.org/software/make/), and [renv](https://rstudio.github.io/renv/) to take care of R dependencies. A key R dep for me is [cmdstanr](https://mc-stan.org/cmdstanr/). This repo includes reusable code snippets to make all those work together:

- `Makefile`
    - Run `make` to bootstrap R dependencies with renv and render the Quarto project
- `index.qmd`
    - Manuscript source with snippets that ensure cmdstanr works (if requested in an environment file)
