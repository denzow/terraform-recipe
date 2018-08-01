resource "aws_iam_group_policy" "MyAdmin" {
  name  = "MyAdmin"
  group = "${aws_iam_group.my_admin.id}"

  policy = "${file("aws_iam_group_policies/my_admin_policy.json")}"
}
