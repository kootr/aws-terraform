# aws_internet_gateway.test-igw:
resource "aws_internet_gateway" "test-igw" {
    # arn      = "arn:aws:ec2:ap-northeast-1:095536213803:internet-gateway/igw-0c45b4d85de44146c"
    # id       = "igw-0c45b4d85de44146c"
    # owner_id = "095536213803"
    tags     = {
        "Name" = "test-igw"
    }
    vpc_id   = "${aws_vpc.test-vpc.id}"
}
