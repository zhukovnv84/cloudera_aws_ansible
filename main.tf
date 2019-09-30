provider "aws" {
  access_key       = "${var.access_key}"
  secret_key       = "${var.secret_key}"
  region           = "eu-central-1"

}




module "virtual_machine" {
  source   = "./modules/virtual_machine"
}



module "master1_node" {
  source   = "./modules/master1_node"

}


module "master2_node" {
  source   = "./modules/master2_node"

}



module "master3_node" {
  source   = "./modules/master3_node"

}




module "scm_node" {
  source   = "./modules/scm_node"

}


module "scmnew_node" {
  source   = "./modules/scmnew_node"
}



module "database_node" {
  source   = "./modules/database_node"

}


module "gateway_node" {
  source   = "./modules/gateway_node"

}








