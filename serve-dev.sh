#!/bin/bash
# Local dev server: builds outside Dropbox, incremental.
cd "$(dirname "$0")"
bundle exec jekyll serve --config _config.yml,dev-config.yml --incremental --livereload
