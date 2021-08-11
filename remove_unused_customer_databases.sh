#deletes all the customer databases that are currently used by non of the schemas

mysql -u root -e "show databases" > databases.txt 
# schemas as array to store schemas
# customerDB to store cutomerdatabases
s=0
c=0
d=0
while read -r line; do
   if [[ $line == "sdplive"* ]]; then
	schemas[$((s))]=$line
	s=$((s+1))
   elif [[ $line == "db"* ]]; then 
	customerDB[$c]=$line
	c=$((c+1))
   fi
done < databases.txt
echo "" > databases.txt
for schema in "${schemas[@]}"; do 
	mysql -u root -e "select SCHEMANAME from $schema.CustomerDatabase" >> databases.txt
done

for db in "${customerDB[@]}"; do
	if ! grep -q $db databases.txt; then
		echo "droping database $db"
		mysql -u root -e "drop database $db"
	fi
done

echo "<-------------------------done------------------------>"
