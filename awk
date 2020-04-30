# Awk
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


Awk conditions
• Awk has special patterns called BEGIN and END to run specific tasks only once.
cat SGD_features.tab | awk ' BEGIN { print "Hello!" } { print NR, NF } END { print "Goodbye!" } ' | head 
• > or < comparisons: '$1 < 60 { print 41 }' 
• ==, != for equal, not equal: '{ $1 == "ORF" { print $1 }' 
• ~, !~ for pattern match, or pattern no match (regular expressions): ' $1 ~  "YALC|YALW" { print $1 }'
• / /, this construct is called a regexp constant.  ' $1 ~ /YALC|YALW/ { print $1 }' 

Output   
echo | awk '{ OFS="\t"; print 1,2,3 }'
echo | awk '{ printf("%d %d %d",1,2,3) }'                            formatted as three integers
echo | awk '{ printf("A=%0.3f B=%d C=%03d",1,2,3) }'     will print:   A=1.000  B=2  C=003
