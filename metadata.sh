#!/bin/bash

######
# Add kernel metadata for a smooth experience at jupyterhub.unidata.ucar.edu
######

find ./notebooks -name '*.ipynb' -print0  | xargs -0 -I {} bash -c "jq --indent 1 \
 '.metadata.kernelspec.display_name = \"Python [conda env:unidata-python-workshop]\"' '{}' \
 > tmpfile; mv tmpfile '{}'"

find ./notebooks -name '*.ipynb' -print0  | xargs -0 -I {} bash -c "jq --indent 1 \
 '.metadata.kernelspec.name = \"conda-env-unidata-python-workshop-py\"' '{}' \
 > tmpfile; mv tmpfile '{}'"

