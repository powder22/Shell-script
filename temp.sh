while read -r line; do
	rm /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse/ZIDE/RAF/$line

echo $line
done < merge.txt
