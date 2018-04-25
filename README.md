
# cloud-provisionning

## AZURE

before launching the azure playbookyou must set your azure credential (see azure and ansible documentation for the value to set).
see : http://docs.ansible.com/ansible/latest/scenario_guides/guide_azure.html
# option 1. setting below environment variables
export AZURE_CLIENT_ID=XXXXXXXXXXXXXX
export AZURE_SECRET=XXXXXXXXXXXXXX
export AZURE_SUBSCRIPTION_ID=XXXXXXXXXXXXXX
export AZURE_TENANT=XXXXXXXXXXXXXX

or 
# option 2. add below content to file $HOME/.azure/credentials.

[default]
subscription_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
client_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
secret=xxxxxxxxxxxxxxxxx
tenant=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
