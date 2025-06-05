# packer-0605
packer-0605

Readme.txt

: packer
packer init .
packer validate build.pkr.hcl
packer build build.pkr.hcl

: terraform
terraform init
terraform plan
terraform apply
terraform destroy

: 
cp -r ./packer/scripts ./packer-0605/
cp -r ./packer/build.pkr.hcl ./packer-0605/
