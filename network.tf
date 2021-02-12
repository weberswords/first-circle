resource "aws_vpc" "first_circle" {
  cidr_block = var.cidr_blocks.vpc.range
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "first_circle" {
  vpc_id     = aws_vpc.first_circle.id
  cidr_block = var.cidr_blocks.subnet.range

  tags = {
    Name = "main"
  }
}