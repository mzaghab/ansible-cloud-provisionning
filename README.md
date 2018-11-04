
# cloud-provisionning

# AZURE

before launching the azure playbook you must set your azure credential (see azure and ansible documentation for the value to set).
see : http://docs.ansible.com/ansible/latest/scenario_guides/guide_azure.html
## option 1. setting below environment variables
`export AZURE_CLIENT_ID=XXXXXXXXXXXXXX`

`export AZURE_SECRET=XXXXXXXXXXXXXX`

`export AZURE_SUBSCRIPTION_ID=XXXXXXXXXXXXXX`

`export AZURE_TENANT=XXXXXXXXXXXXXX`

or 
## option 2. add below content to file $HOME/.azure/credentials.

`[default]`

`subscription_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

`client_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

`secret=xxxxxxxxxxxxxxxxx`

`tenant=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

## AZURE PROVISIONNING VIA ANSIBLE
to launch the provisionning of the azure instances :

`ansible-playbook -c localhost ansible/playbooks/site.yml  -e azure_resource_suffixe=<suffixe> `

Note : due to the ansible bug below (we must wait for the next release), Network interfaces is not affected to the specified Network security groups instead a default one is created, so you must fixe it manually by attaching the created 'Network interfaces' to the 'Network security groups' and delete the Network security groups created by default.

  https://github.com/ansible/ansible/issues/36093

to clean the provisionning of the azure instances :

`ansible-playbook -c localhost ansible/playbooks/site.yml  -e azure_resource_suffixe=<suffixe> -e azure_clean=True`

# GCP

before launching the azure playbook you must set your google cloud platform credential (see gcp and ansible documentation for the value to set).
see : https://docs.ansible.com/ansible/latest/scenario_guides/guide_gce.html
## option 1. setting below environment variables
`export AZURE_CLIENT_ID=XXXXXXXXXXXXXX`

`export AZURE_SECRET=XXXXXXXXXXXXXX`

`export AZURE_SUBSCRIPTION_ID=XXXXXXXXXXXXXX`

`export AZURE_TENANT=XXXXXXXXXXXXXX`

or 
## option 2. add below content to file $HOME/.azure/credentials.

`[default]`

`subscription_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

`client_id=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

`secret=xxxxxxxxxxxxxxxxx`

`tenant=xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

## AZURE PROVISIONNING VIA ANSIBLE
to launch the provisionning of the azure instances :

`ansible-playbook -c localhost ansible/playbooks/site.yml  -e azure_resource_suffixe=<suffixe> `

Note : due to the ansible bug below (we must wait for the next release), Network interfaces is not affected to the specified Network security groups instead a default one is created, so you must fixe it manually by attaching the created 'Network interfaces' to the 'Network security groups' and delete the Network security groups created by default.

  https://github.com/ansible/ansible/issues/36093

to clean the provisionning of the azure instances :

`ansible-playbook -c localhost ansible/playbooks/site.yml  -e azure_resource_suffixe=<suffixe> -e azure_clean=True`
