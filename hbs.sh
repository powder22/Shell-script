
eclpise_url=/home/local/ZOHOCORP/boopathi-8234/Boopathi/Programs/eclipse

cd ~
cd node_modules/handlebars/bin

./handlebars $eclpise_url/ZIDE/$1/webapps/servicedesk/sdp_templates/*/*.hbs $eclpise_url/ZIDE/$1/webapps/servicedesk/sdp_templates/*/*/*.hbs -f $eclpise_url/ZIDE/deployment/$1/AdventNet/Sas/tomcat/webapps/$1//scripts/sdp_templates.js -e hbs


echo "<---------------------------------------------------------------------------------------SUCCESS------------------------------------------------------------------------------------------------------------------->"
