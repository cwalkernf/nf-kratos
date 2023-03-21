#!/bin/bash

# After merging upstream changes into Develop
# Merge changes from zitify-branch: git merge zitify-branch
# This will almost certainly result in merge conflicts
# This script should great all files for the below strings,
# and if found remove them all with sed.

# Script replaces the text below in go.mod and go.sum:
# >>>>>>> zitify-admin-listener -> (branch being merged into develop)
# =======
# <<<<<<< HEAD

sed -i 's/>>>>>>> test-zitification-new//' go.sum
sed -i 's/=======//' go.sum
sed -i 's/<<<<<<< HEAD//' go.sum

sed -i 's/>>>>>>> test-zitification-new//' go.mod
sed -i 's/=======//' go.mod
sed -i 's/<<<<<<< HEAD//' go.mod
