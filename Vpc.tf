#Creating one VPC
resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = var.vpc_name
      "Owner" = "pratyank.chauhan@cloudeq.com"
    }
  
}

#Creating two subnets
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "pratyank-subnet1"
      Owner = "pratyank.chauhan@cloudeq.com"
    }
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "pratyank-subnet2"
      Owner = "pratyank.chauhan@cloudeq.com"
    }
}


#Creating Instance
resource "aws_instance" "subnet1_instace1" {
  ami           = "ami-0bd3f43f107376d6b"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet1.id}"
  tags = {
    Name = "subnet1"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
    volume_tags = {
    Name = "subnet1"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
   
}

resource "aws_instance" "subnet1_instace2" {
  ami           = "ami-0bd3f43f107376d6b"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet1.id}"
  tags = {
    Name = "subnet1"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
    volume_tags = {
    Name = "subnet1_instance2"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
   
}

resource "aws_instance" "subnet2_instace1" {
  ami           = "ami-0bd3f43f107376d6b"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet2.id}"
  tags = {
    Name = "subnet2"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
    volume_tags = {
    Name = "subnet2_instance1"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
   
}


resource "aws_instance" "subnet2_instace2" {
  ami           = "ami-0bd3f43f107376d6b"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet2.id}"
  tags = {
    Name = "subnet2"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
    volume_tags = {
    Name = "subnet2_instance2"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
   
}

provider "aws" {
    region = "ap-south-1"
  
}