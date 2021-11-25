resource "aws_internet_gateway" "hgkim_ig" {
    vpc_id = aws_vpc.hgkim_vpc.id

    tags = {
        "Name" = "hgkim-ig"
    }


}