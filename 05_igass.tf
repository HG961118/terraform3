resource "aws_route_table_association" "hgkim_igas_puba" {
    subnet_id = aws_subnet.hgkim_puba.id
    route_table_id = aws_route_table.hgkim_rt.id
}
resource "aws_route_table_association" "hgkim_igas_pubc" {
    subnet_id = aws_subnet.hgkim_pubc.id
    route_table_id = aws_route_table.hgkim_rt.id
}