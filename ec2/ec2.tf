# resource "aws_instance" "dev-instance" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id = var.subnet_id
#   associate_public_ip_address = true

#  tags = merge(var.tags,{
#   Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-dev-instance"
#  })
# }



# resource "aws_instance" "dev-instance" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id = var.subnet_id
#   associate_public_ip_address = false

#  tags = merge(var.tags,{
#   Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-dev-instance"
#  })
# }