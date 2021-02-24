# aws_vpc.test-vpc:
resource "aws_vpc" "test-vpc" {
    cidr_block                       = "10.0.0.0/16"
    assign_generated_ipv6_cidr_block = false
#    default_network_acl_id           = "acl-0b7d07aa4c17f5dc4"
    # default_route_table_id           = "${aws_route_table.test-rtb-pri.id}"
    # default_security_group_id        = "${aws_security_group.default.id}"
    enable_dns_hostnames             = true
   # enable_dns_support               = true
   # id                               = "vpc-0ced10853e516fc43"
    instance_tenancy                 = "default"
   #  main_route_table_id              = "rtb-088a1a32ee81d8736"
   #  owner_id                         = "095536213803"
    tags                             = {
        "Name" = "test-vpc"
    }
}
