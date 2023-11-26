#Creating Route Table
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.custom.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "Route to internet"
  }
}