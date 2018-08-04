resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.vpc.id}"
    tags {
        Name = "${var.service}-${var.env}-gw"
    }
}