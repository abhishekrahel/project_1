variable "ami" {}
variable "instance_type" {}
variable "region" {}
#variable "tags" {}
variable "environment" {
  description = "Deployment environment"
  type        = string
}

