# cloudera_aws_terraform_ansible_dynamically
prepare
- generate ssh for aws -  sshkey.pem and copy to files/sshkeys and cloudera-playbook/files/sshkeys
- upload to folder cloudera-playbook/files/ java file jdk-8u181-linux-x64.rpm you can download from here https://drive.google.com/file/d/1Vdp_aj1HmHSCfQD-Ixdgq0hMdpORYgCc/view?usp=sharing


aws configure

change in modules/***/variables.tf
 - "zone"
 - "instance_type"
 - "ami"
 - "security_group_ids" (i had 2)
 - "aws_key_pair_name" - ssh_keys.pem have to be generated in aws console before and added to files/sshkeys folder
 - "key_name" - name ssh_key
 - "avn_name" - " aws_virtual_network name"
 
 terrafor will create 1 database_node (with Postgrees) 1  gateway_node 3 Master_node,  1  Scm_node (Cloudera Manager), 
 1  Scmnew_node ( you may disable it if does not need - comment main.tf module "scmnew_node" ) 3 data_nodes - (modules/virtual_machine/variables.tf)
 
 after create those machines it will run ansible from cloudera-playbook/site.yml
 

- install terraform 12, run terraform init
- add credentialls to terraform.tfvars
- add to .bash_profile for use ec2.py --list
AWS_ACCESS_KEY_ID=''
AWS_SECRET_ACCESS_KEY=''
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY


