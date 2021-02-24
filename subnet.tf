# aws_subnet.test-vpc-subnet-1-pub:
resource "aws_subnet" "test-vpc-subnet-1-pub" {
#    arn                             = "arn:aws:ec2:ap-northeast-1:095536213803:subnet/subnet-06359e08aa3805fb1"
    assign_ipv6_address_on_creation = false
    availability_zone               = "ap-northeast-1a"
#    availability_zone_id            = "apne1-az4"
    cidr_block                      = "10.0.0.0/24"
#    id                              = "subnet-06359e08aa3805fb1"
    map_public_ip_on_launch         = false
#    owner_id                        = "095536213803"
    tags                            = {
        "Name" = "test-vpc-subnet-1-pub"
    }
    vpc_id                          = "${aws_vpc.test-vpc.id}"
    timeouts {}
}

# aws_subnet.test-vpc-subnet-2-pri:
resource "aws_subnet" "test-vpc-subnet-2-pri" {
#    arn                             = "arn:aws:ec2:ap-northeast-1:095536213803:subnet/subnet-0335e8947b6b091db"
    assign_ipv6_address_on_creation = false
    availability_zone               = "ap-northeast-1a"
#    availability_zone_id            = "apne1-az4"
    cidr_block                      = "10.0.1.0/24"
#    id                              = "subnet-0335e8947b6b091db"
    map_public_ip_on_launch         = false
#    owner_id                        = "095536213803"
    tags                            = {
        "Name" = "test-vpc-subnet-2-pri"
    }
    vpc_id                          = "${aws_vpc.test-vpc.id}"
    timeouts {}
}