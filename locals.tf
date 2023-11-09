locals {
  project_tags = {
    contact = "devops@jjtech.com"
    application = "payments"
project = "JJTech"
environment = "${terraform.workspace}"
creationTime = timestamp()

  }
}