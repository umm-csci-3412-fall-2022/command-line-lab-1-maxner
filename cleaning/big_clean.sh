
input=$1

Scratch=$(mktemp --directory)

tar xvf $input --directory $Scratch

grep -lr "DELETE ME!" $Scratch | xargs rm -f

rm -rf $Scratch
