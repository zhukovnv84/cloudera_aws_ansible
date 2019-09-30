variable "zone" {
description = "zone used"
default     = "eu-central-1b"
}

variable "attached_size_volume" {
description = "disk size"
default     = "50"
}




variable "path" {
  description = "Path to a directory where the public and private key will be stored."
  default     = "files/ssh"
}



variable "instance_type" {
description = "The type of EC2 Instances to run (e.g. t2.micro)"
default     = "m4.xlarge"
#default     = "t2.nano" 
}

variable "ami" {
description = "ami"
default     = "ami-dd3c0f36"
}

variable "security_group_ids" {
description = "security_group_ids"
default     = ["sg-05cc545be69b810b4","sg-005d790d237d7a072"]
}
variable "aws_key_pair_name"                   {
description = "aws_key_pair_name"
default     = "sshkey"
}


variable "username"                   {
description = "username for connection"
default     = "centos"

}

variable "key_name" {
description = "username for connection"
default     = "files/sshkeys/sshkey.pem"
}




variable "instance_tags"
                {
description = " name for instances tags"
default     = "ololo"
}


variable "vm_ids" {
  type         = "list"
  description  = "List of virtual machines"
  default      = ["scm_newevico"]
}



variable "hostname_list" {
  type         = "list"
  description  = "List of hostnames for vm"
  default      = ["scm.newevico.nbs"]
}


variable "counts" {
  default = 1
}


variable "avn_name"
                  {
description = " aws_virtual_network name"
default = "myacctvn"
}





