#가용 영역 a의 public subnet
resource "aws_subnet" "hgkim_puba" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "hgkim-puba"
  }
}

resource "aws_subnet" "hgkim_pubc" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    "Name" = "hgkim-pubc"
  }
}
resource "aws_subnet" "hgkim_pria" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    "Name" = "hgkim-pria"
  }
}

resource "aws_subnet" "hgkim_pric" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.3.0/24"
  tags = {
    "Name" = "hgkim-pric"
  }
}
resource "aws_subnet" "hgkim_pridba" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.4.0/24"
  tags = {
    "Name" = "hgkim-pridba"
  }
}

resource "aws_subnet" "hgkim_pridbc" {
  vpc_id = aws_vpc.hgkim_vpc.id
  cidr_block = "10.0.5.0/24"
  tags = {
    "Name" = "hgkim-pridbc"
  }
}
