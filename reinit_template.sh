#deletes every row in workorder,servicedefinition and requesttemplate_list table
#@arg1 database name
mysql -u root -e "delete from $1.WorkOrder"
mysql -u root -e "delete from $1.ServiceDefinition"
mysql -u root -e "delete from $1.RequestTemplate_List"
echo <--------------------------------------------------------------------------------------done------------------------------------------------------------------------------------------------------------------->
