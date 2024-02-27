#!/bin/bash
# example to convert oracle datamodeler xml glossary file to velocity map
xmlstarlet \
 sel -t -m "//glossaryWord" \
 -v "@abbreviation" \
 -o " " \
 -v "@name" \
 -n example.glossary | \
 awk '{print "#set( $glossary[\""$1"\"] = \""$2"\")"}' > \
 TelosysTools/templates/plantuml/glossary.vm
