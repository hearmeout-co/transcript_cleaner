INPUT_FILE=$1

cp "$INPUT_FILE" "$INPUT_FILE.original"

perl -i -pe 's/ kind of like / /g' "$INPUT_FILE"
perl -i -pe 's/(?<!hat) kind of / /g' "$INPUT_FILE"
perl -i -pe 's/(?:Um|Like|You know),\s*([a-zA-Z])/\U$1/g' "$INPUT_FILE"
perl -i -pe 's/,?(\s)?(?:um|like|you know|I think),\s*([a-zA-Z])/$1$2/g' "$INPUT_FILE"
perl -i -pe 's/Gotcha\.\s//g' "$INPUT_FILE"
