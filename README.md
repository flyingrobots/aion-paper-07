# AIΩN Foundations — Paper VII

## WARP: Optics, Holograms, and Worldlines over Shared Causal History

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.19751149.svg)](https://doi.org/10.5281/zenodo.19751149)

- DOI: [10.5281/zenodo.19751149](https://doi.org/10.5281/zenodo.19751149)
- Author: James Ross (ORCID: [0009-0006-0025-7801](https://orcid.org/0009-0006-0025-7801))
- Date: April 2026

## Repository Purpose

This repository is intentionally minimal and contains only the files needed to build and ship Paper VII.

## Layout

- `LICENSE` — CC BY 4.0 license notice
- `CITATION.cff` — Citation metadata for GitHub and downstream tools
- `.zenodo.json` — Zenodo metadata (title, description, creators, keywords, related identifiers)
- `paper/main.tex` — Canonical manuscript source
- `paper/refs.bib` — Bibliography database
- `Makefile` — Build entrypoint (`latexmk` + `pdftotext`)
- `dist/aion-paper-07.pdf` — Compiled PDF
- `dist/aion-paper-07.txt` — Plain-text rendering derived from the built PDF

## Build

Prerequisites:

- TeX Live (or equivalent LaTeX distribution)
- `latexmk`
- `pdftotext` (Poppler)

From repo root:

```bash
make
```

Rebuild cleanly:

```bash
make clean
make
```
