resource "aws_route_table" "hgkim_rt" {
    vpc_id = aws_vpc.hgkim_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.hgkim_ig.id
    }
    tags = {
        "Name" = "hgkim_rt"
    }
}