resource "aws_eip" "hgkim_ngw_ip" {
    vpc = true
}

resource "aws_nat_gateway" "hgkim_ngw" {
    allocation_id = aws_eip.hgkim_ngw_ip.id
    subnet_id = aws_subnet.hgkim_puba.id

    tags = {
    "Name" = "hgkim-ngw"
    }

}