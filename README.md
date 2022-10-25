# Clone this repo and make copy it in Gitlab!!
Replace the following attributes:

- `gcp_project_id`
-  `network`
- `subnetwork`
- `Update SERVICE ACCOUNT KEY`

# To test it on local system!!
To provision this example, run the following from within this directory:
- `packer fmt .` to check hcl2 formatting
- `packer init .` to get the plugins
- `packer validate .` to check the infrastructure syntax
- `packer build .` to apply the infrastructure build
