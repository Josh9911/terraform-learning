module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    cidr = var.enviroment.inputs.vpc_cidr

    azs = [data.aws_avail]
  
}