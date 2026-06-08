provider "aws"{
    region = "us-east-1"
}
module "server" {
   source = "./sample_module_pipeline"

   ami = var.ami
   instance_type = var.instance_type
   tags = var.tags
   region = var.region
   environment = var.environment
   

}



