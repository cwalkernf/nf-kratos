#!/bin/bash

FILE_NAME=$1

echo "editing merge conflicts in ${FILE_NAME}"

# After merging upstream changes into Develop
# Merge changes from zitify-branch: git merge zitify-branch
# This will almost certainly result in merge conflicts
# This script should great all files for the below strings,
# and if found remove them all with sed.

# Script replaces the text below in go.mod and go.sum:
# >>>>>>> zitify-admin-listener -> (branch being merged into develop)
# =======
# <<<<<<< HEAD

sed -i 's/>>>>>>> master//' $FILE_NAME
sed -i 's/=======//' $FILE_NAME
sed -i 's/<<<<<<< HEAD//' $FILE_NAME

sed -i 's/>>>>>>> master//' $FILE_NAME
sed -i 's/=======//' $FILE_NAME
sed -i 's/<<<<<<< HEAD//' $FILE_NAME
