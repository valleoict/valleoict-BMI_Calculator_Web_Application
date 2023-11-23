# Create a public subnet
resource "aws_subnet" "public" {
  count                   = 2
  vpc_id                  = aws_vpc.custom.id
  cidr_block              = var.public_subnet_cidr[count.index]
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "public_subnet_${count.index}"
  }
}

# Create a private subnet
resource "aws_subnet" "private" {
  count             = 2
  vpc_id            = aws_vpc.custom.id
  cidr_block        = var.private_subnet_cidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "private_subnet_${count.index}"
  }
}