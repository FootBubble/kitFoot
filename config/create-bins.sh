#!/usr/bin/env zsh
for file in $SIMPLE_PATH/src/*.mjs; do
    # Strip the path
    binName=${file##*/}
    # Strip the .mjs extension
    binName=${binName%.mjs}
    # Create the alias
    sed "s/{{name}}/$binName/g" $SIMPLE_PATH/config/template-bin > $SIMPLE_PATH/bin/$binName
    chmod +x $SIMPLE_PATH/bin/$binName
done