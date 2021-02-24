# aws_route_table.test-rtb-pri:
resource "aws_route_table" "test-rtb-pri" {
    # id               = "rtb-088a1a32ee81d8736"
    # owner_id         = "095536213803"
    propagating_vgws = []
    route            = []
    tags             = {
        "Name" = "test-rtb-pri"
    }
    
    vpc_id                          = "${aws_vpc.test-vpc.id}"
}

# aws_route_table.test-rtb-pub:
resource "aws_route_table" "test-rtb-pub" {
    # id               = "rtb-0b9421d5bd0da62fb"
    # owner_id         = "095536213803"
    propagating_vgws = []
    route            = [
        {
            cidr_block                = "0.0.0.0/0"
            egress_only_gateway_id    = ""
            gateway_id                = "${aws_internet_gateway.test-igw.id}"
            instance_id               = ""
            ipv6_cidr_block           = ""
            nat_gateway_id            = ""
            network_interface_id      = ""
            transit_gateway_id        = ""
            vpc_peering_connection_id = ""
        },
    ]
    tags             = {
        "Name" = "test-rtb-pub"
    }
    vpc_id                          = "${aws_vpc.test-vpc.id}"
}
