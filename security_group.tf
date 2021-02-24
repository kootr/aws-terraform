# aws_security_group.default:
resource "aws_security_group" "default" {
    # arn         = "arn:aws:ec2:ap-northeast-1:095536213803:security-group/sg-0f3c47041517ab5ec"
    description = "default VPC security group"
    egress      = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    # id          = "sg-0f3c47041517ab5ec"
    ingress     = [
        {
            cidr_blocks      = []
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = true
            to_port          = 0
        },
    ]
    name        = "default"
    # owner_id    = "095536213803"
    tags        = {}
    vpc_id      = "${aws_vpc.test-vpc.id}"

    timeouts {}
}

# aws_security_group.test-vpc-subnet-1-pub:
resource "aws_security_group" "test-vpc-subnet-1-pub" {
    # arn         = "arn:aws:ec2:ap-northeast-1:095536213803:security-group/sg-06c1ac3a56932fef8"
    description = "Allow SSH access from internet"
    egress      = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    # id          = "sg-06c1ac3a56932fef8"
    ingress     = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 22
            ipv6_cidr_blocks = [
                "::/0",
            ]
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 22
        },
    ]
    name        = "test-vpc-subnet-1-pub"
    # owner_id    = "095536213803"
    tags        = {}
    vpc_id      = "${aws_vpc.test-vpc.id}"

    timeouts {}
}
