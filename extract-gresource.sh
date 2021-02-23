#! /bin/sh

if [ $# -eq 0 ]
then
  echo 'File name missing \n'
  exit
fi

if [ $# -gt 1 ]
then
  echo 'This command accepts only one argument \n'
  exit
fi

if [ ! -f "$1" ]; then
    echo "The file \"$1\" does not exist!\n"
    exit 1
fi

input_file=$1

for r in `gresource list $input_file`; do
  r_path=`dirname "$r"`
  echo "Creating path: $r_path \n"
  mkdir -p ".$r_path"
  echo "Extracting file $r \n"
  gresource extract $input_file $r > ".$r"
done
