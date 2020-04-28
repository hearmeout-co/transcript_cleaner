INPUT_FILE=$1

perl -i -pe 's/ kind of like / /g' "$INPUT_FILE"
perl -i -pe 's/(?<!hat) kind of / /g' "$INPUT_FILE"
perl -i -pe 's/(?:Um|Like),\s*([a-zA-Z])/\U$1/g' "$INPUT_FILE"
perl -i -pe 's/(?:um|like),\s*([a-zA-Z])/$1/g' "$INPUT_FILE"