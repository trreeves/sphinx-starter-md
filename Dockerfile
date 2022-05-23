FROM sphinxdoc/sphinx

WORKDIR /docs

RUN pip install --upgrade \
    myst-parser \
    sphinx-rtd-theme
