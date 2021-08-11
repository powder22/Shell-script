# three aruguments
# first :: build name
# second :: default help card name
# third :: new default help card name

cd /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse/ZIDE/$1/webapps/servicedesk/html

echo pwd

ls | grep ".*$2.*"  > temp.txt

while read -r line; do
	original_file_name=$line
	new_file_name="${line/$2/$3}"
	echo "$new_file_name"
	mv "$original_file_name" "$new_file_name"

done < temp.txt
rm temp.txt

