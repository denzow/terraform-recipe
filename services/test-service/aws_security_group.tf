resource "aws_security_group" "app" {
  name = "${var.service}-service-${var.env}-app"
  description = "It is a security group on app"
  vpc_id = "${module.vpc.vpc_id}"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "TCP"

    security_groups = []

    cidr_blocks = []
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags {
    Name = "${var.service}-service-${var.env}-app"
  }
}

resource "aws_security_group" "db" {
  name = "${var.service}-service-${var.env}-db"
  description = "Database sg for instances"
  vpc_id = "${module.vpc.vpc_id}"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "TCP"

    security_groups = []

    cidr_blocks = []
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags {
    Name = "${var.service}-service-${var.env}-db"
    service = "${var.service}"
    env = "${var.env}"
    tfstate = "${var.tfstate}"
  }
}
