#############################

resource "aws_instance" "example" {
  ami                     = "${var.ami}"
  instance_type           = "${var.instance_type}"
  count                   = "${var.counts}"
  key_name                = "${var.aws_key_pair_name}"
  vpc_security_group_ids  = "${var.security_group_ids}"


  root_block_device {
    volume_size = "100"
    volume_type = "gp2"
 }

tags = {
            Name          = "${var.vm_ids[count.index]}"
            cdh           = "servers"
            worker        = "servers"
       }

  provisioner "remote-exec" {
    inline = [
      "sudo hostnamectl set-hostname ${var.hostname_list[count.index]}",
      "sudo systemctl restart systemd-hostnamed",
    ]
    connection {
    host = "${self.private_ip}"
    type        = "ssh"
    user        = "${var.username}"
    private_key = "${file(var.key_name)}"
 }

 }


}


resource "null_resource" "ansible" {

  triggers = {
     private_ip           = "${join(",", aws_instance.example.*.private_ip)}"
  }


#  provisioner "local-exec" {
#    command =  "ansible-playbook -v main.yml"

#}
}





