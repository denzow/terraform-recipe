resource "aws_iam_group_membership" "my_admin" {
  name  = "MyAdmin"
  group = "${aws_iam_group.my_admin.name}"

  users = [
    "${aws_iam_user.denzow_staff.name}",
  ]
}