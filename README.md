# asciidoctor-command-refresh
Displays output of a command in an AsciiDoctor table

![ss](http://i.imgur.com/8X5QVKA.png)

# Requirements
- [asciidoctor-auto-run](https://github.com/joeystevens00/asciidoctor-auto-run)

# Install
Update the adoc variable with the correct path to the monitored asciidoctor-auto-run directory
```
# Set up vars.  Set the correct paths here
adoc="/path/to/asciidoctor-auto-run/adoc/command-table"
file="$adoc/command.adoc"
mainfile="$adoc/index.adoc"
```

Run asciidoctor-command-refresh

`bash asciidoctor-command-refresh.sh "df -h"`

Optionally continuously update 
```
while :; do
bash asciidoctor-command-refresh.sh "df -h"
sleep 1
done
```
