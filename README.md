# BDS Toolbox

This repository contains assignments for **BDS Toolbox**.

Rendered: <https://thatmariia.github.io/bdst/>

## Setup

Package versions are pinned with [renv](https://rstudio.github.io/renv/):

```r
renv::restore()
```

## Assignments

| id | Title | Source | Hand-in |
|----|-------|--------|---------|
| `01-explore` | Assignment 1: Explore | [Rmd](assignments/01-explore/01-explore.Rmd) | [HTML](output/01-explore.html) |

## Starting a new assignment

Build the scaffold from the questions in html:

```bash
Rscript scripts/import-assignment.R <path> <id>
```

That writes `assignments/<id>/<id>.Rmd` with figures extracted into
`figures/`.

Start a blank assignment:

```bash
Rscript scripts/new-assignment.R <id> <title>
```

## Rendering

```bash
Rscript scripts/render.R <id>
Rscript scripts/render.R  # renders all assignments
```

The results are written in `output/`.
