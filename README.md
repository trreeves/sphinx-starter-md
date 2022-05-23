# Sphinx Starter (Markdown)

This repository contains some initial content to bootstrap a new [Sphinx](https://www.sphinx-doc.org/) documentation project, using [Markdown](https://myst-parser.readthedocs.io/en/latest/index.html) to define the content, and the [Read-The-Docs](https://github.com/readthedocs/sphinx_rtd_theme) theme.

Docker is a pre-requisit.

## Creating this starter content

The content in this repo was created by following these steps:

### 1. Build a custom container image

```shell
docker build -t sphinx-starter-md:local .
```

### 2. Scaffold the basic structure using the `sphinx-starter` command

```shell
docker run --rm -it -v "$(pwd):/docs" sphinx-starter-md:local sphinx-quickstart
```

### 3. Update the Sphinx configuration

Update `conf.py`, to ensure the following values:

```python
html_theme = 'sphinx_rtd_theme'

extensions = [
    'myst_parser'
]

# To support markdown content
# https://www.sphinx-doc.org/en/master/usage/configuration.html#confval-source_suffix
source_suffix = {
    '.rst': 'restructuredtext',
    '.txt': 'restructuredtext',
    '.md': 'markdown',
}
```

### 4. Converted `index.rst` to `index.md`

## Generate HTML content

```shell
docker run --rm -v "$(pwd):/docs" sphinx-starter-md:local make html
```