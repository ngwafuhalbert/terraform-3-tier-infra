# resource "aws_security_group" "ec2-sg" {
#   name        = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-rds-sg"
#   description = "Allow all traffic"
#   vpc_id      = var.vpc_id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 0
#     to_port          = 0
#     protocol         = -1
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#  tags = merge(var.tags,{
# Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-security-grp"
# })
# }