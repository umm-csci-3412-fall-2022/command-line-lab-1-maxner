
input=$1

Scratch=$(mktemp --directory)
here=$(pwd)

tar -xvf $input --directory=$Scratch

grep -lr "DELETE ME!" $Scratch | xargs rm -f

cd $Scratch

tar -czvf "cleaned_$input" *

mv "cleaned_$input" $here


rm -rf $Scratch

