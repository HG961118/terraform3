provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_vpc" "hgkim_vpc" {
    cidr_block          = "10.0.0.0/16"
    enable_dns_hostname = true
    enable_dns_support  = true
    tags = {
        "Name" = "hgkim-vpc"
    }
}