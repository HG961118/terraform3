resource "aws_route_table_association" "hgkim_ngwass_pria" {
    subnet_id = aws_subnet.hgkim_pria.id
    route_table_id = aws_route_table.hgkim_ngwrt.id
}
resource "aws_route_table_association" "hgkim_ngwass_pric" {
    subnet_id = aws_subnet.hgkim_pric.id
    route_table_id = aws_route_table.hgkim_ngwrt.id
}

resource "aws_route_table_association" "hgkim_ngwass_pridba" {
    subnet_id = aws_subnet.hgkim_pridba.id
    route_table_id = aws_route_table.hgkim_ngwrt.id
}

resource "aws_route_table_association" "hgkim_ngwass_pridbc" {
    subnet_id = aws_subnet.hgkim_pridbc.id
    route_table_id = aws_route_table.hgkim_ngwrt.id
}