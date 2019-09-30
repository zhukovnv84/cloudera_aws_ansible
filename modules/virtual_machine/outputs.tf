module "keypair" {
  source = "../../modules/keypair"
}  

###volumes


#output "ebs_volume_attachment_id" {
#  description = "The volume ID"
#  value       = "${aws_volume_attachment.this_ec2.*.volume_id}"
#}

#output "ebs_volume_attachment_instance_id" {
#  description = "The instance ID"
#  value       = "${aws_volume_attachment.this_ec2.*.instance_id}"
#}
