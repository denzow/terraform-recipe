
resource "aws_subnet" "public_web" {
    vpc_id                  = "${aws_vpc.tf_vpc.id}"
    cidr_block              = "10.0.0.0/24"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true
    tags {
        Name = "tf_public_web"
    }
}

resource "aws_subnet" "private_db1" {
    vpc_id            = "${aws_vpc.tf_vpc.id}"
    cidr_block        = "10.0.1.0/24"
    availability_zone = "ap-northeast-1a"
    tags {
        Name = "tf_private_db1"
    }
}

resource "aws_subnet" "private_db2" {
    vpc_id            = "${aws_vpc.tf_vpc.id}"
    cidr_block        = "10.0.2.0/24"
    availability_zone = "ap-northeast-1c"
    tags {
        Name = "tf_private_db2"
    }
}