#Creating pub-subnet1
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.mvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = "true"
  tags = {

    Name = "pub-subnet-1"
  }

}
#Creating pvt-subnet1
resource "aws_subnet" "pvt-sub-1" {
  vpc_id                  = aws_vpc.mvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-subnet-1"
  }
}

#Creating pub-subnet2
resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.mvpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = "true"
  tags = {

    Name = "pub-subnet-2"
  }

}

#Creating pvt-subnet2
resource "aws_subnet" "pvt-sub-2" {
  vpc_id                  = aws_vpc.mvpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-subnet-2"
  }
}