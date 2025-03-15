# constant values

terraform{
 required_providers{
  aws = {
   source = "hashicorp/aws"
   version = "~> 4.16"
  }
 }
required_version = ">=1.2.0"
}

provider "aws"{
 region = "us-east-2"
}


# change the values of ami and instance_type
resource "aws_instance" "app_server" {
 ami = "ami-0884d2865dbe9de4b"
 instance_type = "t2.micro"

 tags = {
  Name = "terraform_sample"
 }
}