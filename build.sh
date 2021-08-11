
eclpise_url=/home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse
api_dependencies_url=/home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/api_dependencies/APITools

if [ "$2" == "hbs" ]
then
	cd $eclpise_url/ZIDE/$1/tools/
	ls
	sh handlebar_compilation.sh $eclpise_url/ZIDE/$1/ $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/tomcat/webapps/$1/
	echo "handlebars"
elif [ "$2" == "i18n" ]
then
	cd $eclpise_url/ZIDE/$1/tools/
	sh i18n_generation.sh $eclpise_url/ZIDE/$1/ $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/tomcat/webapps/$1/
	echo "i18n"
elif [ "$2" == "sec" ]
then
	cd $api_dependencies_url
	java -cp com.manageengine.sdpod.apitools.securitygeneration.SecurityGen $eclpise_url/ZIDE/sdp_api_framework/tools/apitools/conf/ $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/tomcat/webapps/$1/WEB-INF/  $eclpise_url/ZIDE/$1/product_package/conf/ $eclpise_url/ZIDE/$1/product_package/conf/
	echo "security"
elif [ "$3" == "sqlm" ]
then
	cd $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/bin
	sh sqlCreation.sh $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/tomcat/webapps/$1/WEB-INF $eclpise_url/ZIDE/deployment/$2/AdventNet/Sas/tomcat/webapps/$2/WEB-INF
	echo "sql migration"

else
echo ""
echo "*********************************************************"
echo -e "*Enter valid inputs \t\t\t\t\t*
*eg:\t\t\t\t\t\t\t*
*For i18n generation\t|\t. doit.sh i18n sdplive \t*
*For hbs compilation\t|\t. doit.sh hbs sdplive \t*
*For security gen \t|\t. doit.sh sec sdplive\t*
*For sql migration \t|\t. doit.sh sdplive_old sdplive_new sql\t*"
echo "*********************************************************"
echo ""
fi
cd ~
