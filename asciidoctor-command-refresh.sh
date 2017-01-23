#!/bin/bash
IFS=$'\n'

# Set up vars.  Set the correct paths here
file="/path/to/asciidoctor-auto-run/adoc/command.adoc"
mainfile="/path/to/asciidoctor-auto-run/adoc/index.adoc"
command="$1"
escape_command=$(echo $command | sed 's/|/\\|/ ')
out=$(echo $command | bash)

pretty_print() {
for i in $(echo -e "$1"); do
        echo -e "$i\n"
done
}



# Write to file
echo "
[cols=\"1,3\"]
|===
| Command | Output  
| $escape_command
| $(pretty_print "$out")
|===" > $file

# Trigger when-changed on the main file 
touch $mainfile
