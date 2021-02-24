# aws_instance.bastion-server:
resource "aws_instance" "bastion-server" {
    ami                          = "ami-09dac16017637391f"
    # arn                          = "arn:aws:ec2:ap-northeast-1:095536213803:instance/i-0a3b6a9077b5fad95"
    associate_public_ip_address  = true
    availability_zone            = "ap-northeast-1a"
    cpu_core_count               = 1
    cpu_threads_per_core         = 1
    disable_api_termination      = false
    ebs_optimized                = false
    get_password_data            = false
    hibernation                  = false
#    id                           = "i-0a3b6a9077b5fad95"
#    instance_state               = "running"
    instance_type                = "t2.micro"
    ipv6_address_count           = 0
    ipv6_addresses               = []
    key_name                     = "202101"
    monitoring                   = false
#    primary_network_interface_id = "eni-0d921db0cfd1c4620"
#    private_dns                  = "ip-10-0-0-47.ap-northeast-1.compute.internal"
    private_ip                   = "10.0.0.47"
#    public_dns                   = "ec2-54-95-124-226.ap-northeast-1.compute.amazonaws.com"
#    public_ip                    = "54.95.124.226"
    security_groups              = []
    source_dest_check            = true
    subnet_id                    = "${aws_subnet.test-vpc-subnet-1-pub.id}"
    tags                         = {
        "Name" = "bastion-server-iwasawa"
    }
    tenancy                      = "default"
    volume_tags                  = {}
    vpc_security_group_ids       = [
        "${aws_security_group.default.id}",
        "${aws_security_group.test-vpc-subnet-1-pub.id}",
    ]

    credit_specification {
        cpu_credits = "standard"
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
   #     device_name           = "/dev/sda1"
        encrypted             = false
        iops                  = 100
  #      volume_id             = "vol-07763cba4505f0e4c"
        volume_size           = 8
        volume_type           = "gp2"
    }

    timeouts {}
}

# aws_instance.app-server:
resource "aws_instance" "app-server" {
    ami                          = "ami-09dac16017637391f"
#   arn                          = "arn:aws:ec2:ap-northeast-1:095536213803:instance/i-0e9269507f3cb0529"
    associate_public_ip_address  = false
    availability_zone            = "ap-northeast-1a"
    cpu_core_count               = 1
    cpu_threads_per_core         = 1
    disable_api_termination      = false
    ebs_optimized                = false
    get_password_data            = false
    hibernation                  = false
    # id                           = "i-0e9269507f3cb0529"
    # instance_state               = "running"
    instance_type                = "t2.micro"
    ipv6_address_count           = 0
    ipv6_addresses               = []
    key_name                     = "202101"
    monitoring                   = false
    # primary_network_interface_id = "eni-0834dd94ff1cc6e16"
    # private_dns                  = "ip-10-0-1-79.ap-northeast-1.compute.internal"
    private_ip                   = "10.0.1.79"
    security_groups              = []
    source_dest_check            = true
    subnet_id                    = "${aws_subnet.test-vpc-subnet-2-pri.id}"
    tags                         = {
        "Name" = "app-server-iwasawa"
    }
    tenancy                      = "default"
    volume_tags                  = {}
    vpc_security_group_ids       = [
        "${aws_security_group.default.id}"
    ]

    credit_specification {
        cpu_credits = "standard"
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
        # device_name           = "/dev/sda1"
        encrypted             = false
        iops                  = 100
    #    volume_id             = "vol-082b800744ec0f18b"
        volume_size           = 8
        volume_type           = "gp2"
    }

    timeouts {}
}
