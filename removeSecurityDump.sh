# Use this before commit of any project
# Since all the changes for api testing may or may not be added in the security and web.xml
# This script reverts all those files and then proceed with commit
hg revert webapps/servicedesk/WEB-INF/web.xml
hg revert webapps/servicedesk/WEB-INF/internal/security-api-internal.xml
hg revert webapps/servicedesk/WEB-INF/v3api/security-admin-v3.xml
hg revert webapps/servicedesk/WEB-INF/v3api/security-request-v3.xml


#some changes have done in this file to add the technician in the via api
hg revert source/library/com/manageengine/sdpod/v3api/handlerimpl/TechnicianAPIHandler.java
