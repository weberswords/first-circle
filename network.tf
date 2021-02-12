resource "aws_vpc" "main" {
  cidr_block = var.cidr_blocks.vpc.range
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_blocks.subnet.range

  tags = {
    Name = "Main"
  }
}