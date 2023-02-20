variable "vpc_cidr" {
    description = "my cidr block number"
    type = string
    default = "10.0.0.0/16"
  
}


variable "vpc_name" {
    description = "My first terraform aws assignment"
    type = string
    default = "pratyank_vpc"

  
  
}

variable "ownername" {
  type = string
}


