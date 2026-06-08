resource "aws_instance" ec2 {
    ami = var.ami
    instance_type = var.instance_type
    # tags = var.tags
    region = var.region

    tags = {
    Name        = "${var.environment}-ec2-server"
    Environment = var.environment

    monitoring = true

    }

  metadata_options  {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  root_block_device {
    encrypted = true
  }
    
}

    

