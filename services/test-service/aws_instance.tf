resource "aws_instance" "test_service_ec2" {
    ami = "${lookup(var.images, "app")}"
    instance_type = "t2.micro"
    key_name = "${lookup(var.keys, "app")}"
    vpc_security_group_ids = [
      "${aws_security_group.app.id}"
    ]
    subnet_id = "${module.vpc.public_subnet_1_id}"
    associate_public_ip_address = "true"
    root_block_device = {
      volume_type = "gp2"
      volume_size = "20"
    }
    ebs_block_device = {
      device_name = "/dev/sdf"
      volume_type = "gp2"
      volume_size = "100"
    }
    tags {
        Name = "test_service_ec2"
    }
}