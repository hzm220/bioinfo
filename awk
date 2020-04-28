#Awk
Awk operates on one line at a time, and the typical awk program is so short that it can be listed at the command line. 
cat SGD_features.tab | cut -f 2,4,10,11 | grep ORF | head
awk we can rearrange columns and compute even compute new ones (start-end coordinate) 
cat SGD_features.tab | awk  -F '\t' ' $2=="ORF" { print $4, $2, $10, $11, $11-$10 } ' | head 

awk 'CONDITION { ACTIONS }'
awk 'CONDITION1 { ACTIONS1 } CONDITION2 { ACTIONS2 } CONDITION3 { ACTIONS3 }' 
awk -F '\t'  :The flag  will set the field separator to be the “tab” character.  Default will collapses into one spaces
awk -f myprogram.awk: this flag run the program through awk with more complicated actions

Special awk variables
• $0 is the original line.
• NF number of fields in the current line (number of columns that awk recognizes) • NR number of records, the number of lines processed (line number)
• OFS output fields separator, the character placed between items when printed 
