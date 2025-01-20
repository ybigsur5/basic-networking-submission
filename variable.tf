variable "aws_config" {
  description = "AWS configuration settings"
  type = object({
    region  = string
    profile = string
  })
  default = {
    region  = "ap-southeast-1"
    profile = "default"
  }
}

variable "vpc_settings" {
  description = "VPC configuration"
  type = object({
    name = string
    cidr = string
  })
  default = {
    name = "dicoding-vpc"
    cidr = "10.0.0.0/16"
  }
}

variable "ssh_keys" {
  description = "SSH key paths"
  type = object({
    public  = string
    private = string
  })
}
