I have created the **Demo-Environment** Folder

### First i created two webapp by manual.

### Secondly i create the function app with named "00-functionapp-reportgenerator-qa.bicep"
Run this command to excute this file
az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file 00-functionapp-reportgenerator-qa.bicep


---------------------------------------------
## when we  want to see the webapp list
az webapp list --resource-group rg_mapapp_uat_carecloud --output table
## when we  want to see the appservice plan list
az appservice plan list --resource-group rg_mapapp_uat_carecloud --output table
## if you want to delete the webapp
az webapp delete --name mapapp-ui-uat-carecloud --resource-group rg_mapapp_uat_carecloud
## to delete the service plan
az appservice plan delete --name asp-mapapp-ui-uat-carecloud --resource-group rg_mapapp_uat_carecloud
## if you want to pove the resource webapp exist
az webapp show --name mapapp-ui-uat-carecloud --resource-group rg_mapapp_uat_carecloud
## if you want to pove the resource appservice plan exist
az appservice plan show --name asp-mapapp-ui-uat-carecloud --resource-group rg_mapapp_uat_carecloud
## to check the resource exist through this command also
az webapp list --output table
az appservice plan list --output table

# TO loging the AZure
az login
# to login through browser
#az login --use-device-code

-----------------------------------------------------------------------
## third i create the function app with file name "02-functionapp-validator-demo.bicep
az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "02-functionapp-validator-demo.bicep"


## fourth i create the function app with file name "03-mapappprodblobcarecloud.bcep
az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "03-mapappprodblobcarecloud.bicep"

## fifth i create the function app with the file name "04-servicebus-mapapp-uat-carecloud.bicep"

az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "04-servicebus-mapapp-uat-carecloud.bicep"


## sixth i create the function app with the file named "05-azure-relay-mapapp-uat.bicep"
az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "05-azure-relay-mapapp-uat.bicep"

UAt Addres-space: 11.20.0.0
QA Addres-space: 11.0.0.0
 Dev Addres-space: 11.10.0.0
Address space given to Dev environment by Ali hassan 11.0.0.0
Dev Addres-space: 11.30.0.0
demo Addres-space: 11.40.0.0

az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "06-vnet-mapapp-uat.bicep"

## seven i create the sql server with file named "07-sqlserver-mapapp-demo.bicep"
az deployment group create --resource-group rg_mapapp_demo_carecloud --template-file "07-sqlserver-mapapp-demo.bicep"

