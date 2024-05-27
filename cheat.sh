# convert txt file into a tab delimited format
awk '{ for(i=1;i<=NF;i++){if(i==NF){printf("%s\n",$NF);}else {printf("%s\t",$i)}}}' inputfile

# exclude lines conditional on the values in columns
awk 'NR==1 || !($2=="op2" && $3<5 && $3>1)' test.file
