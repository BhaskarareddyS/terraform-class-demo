terraform {
  backend "s3"{
    region     = "eu-west-2"
    bucket     = "sbrtechworld"
    key        = "terraform.tfstate"
    encrypt    = "false"
    profile    = "MyAWS"
  }
}
