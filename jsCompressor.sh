#check for errors in script files using YUI compressor
cd /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse/ZIDE/$1/build/js_list

while read -r line; do
	java -jar /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/Jars/yuicompressor-2.4.2.jar /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse/ZIDE/$1/webapps/servicedesk/$line > ~/Desktop/dummy.txt
echo $line 
done < sdpscriptsJSList.txt
	
	java -jar /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/Jars/yuicompressor-2.4.2.jar /home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse/ZIDE/$1/webapps/servicedesk/$2 >&2 ~/Desktop/dummy.txt
echo $2
echo "**************************************************************Completed check for the last file in the sdpscriptsJSList.txt**********************************************************************************"
echo $lastFile
