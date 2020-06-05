#!/usr/bin/env bash

while inotifywait -r -e close_write static/sass; do
  sassc --style compact ./static/sass/styles.scss ./static/css/styles.css
done
