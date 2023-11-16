# # import {
# #   to = aws_security_group.weg-sg
# #   id = "sg-0490ce4c673bf155e"
# # }

# # resource "aws_instance" "web" {
# #   ami           = "ami-05c13eab67c5d8861"
# #   instance_type = "t2.micro"
# #   count = 3

# #   tags = {
# #     Name = "HelloWorld"
# #   }
# # }

# # output "instance_id" {
# #     value = aws_instance.web.[*].id

# #     output "arn-without-splat" {
# #     value = aws_instance.web.[*].id
# # }
# # }

# # resource "aws_iam_user" "the-accounts" {
# #   for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
# #   name     = each.key
# # }

# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg"

#   ingress {
#     from_port   = 8200
#     to_port     = 8200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8201
#     to_port     = 8201
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8300
#     to_port     = 8300
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9200
#     to_port     = 9200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9500
#     to_port     = 9500
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg-provisioner"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#     ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# }

# resource "aws_instance" "test" {
#   ami = "ami-0230bd60aa48260c6"
#   instance_type = "t2.micro"
#   tags = {
#     Name="remote-exec-ec2"
#   }
#   key_name = "remote-kp"
#   vpc_security_group_ids = [aws_security_group.demo_sg.id]

#   connection {
#     type ="ssh"
#     user = "ec2-user"
#     private_key = file("./remote-kp.pem")
#     host = self.public_ip
#   }


# provisioner "remote-exec" {
#   inline = [
#     "sudo touch /home/ec2-user/movies"    
#   ]
# }
# }

resource "aws_instance" "test" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = {
    Name="us-east-1-server"
  }
}

resource "aws_instance" "web" {
  ami = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags = {
    Name="us-wes-2-server"
  }
  provider = aws.west
}