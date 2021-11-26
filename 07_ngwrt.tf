resource "aws_route_table" "hgkim_ngwrt" {
    vpc_id = aws_vpc.hgkim_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.hgkim_ngw.id
    }
    tags = {
        "Name" = "hgkim-ngwrt"
    }
}