data "aws_iam_policy_document" "tvlk_build_ecr_repository_p_doc" {
  statement {
    sid    = "AllowPullAccessTvlkOrg"
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability",
      "ecr:DescribeRepositories",
    ]

    condition {
      test     = "StringEquals"
      variable = "aws:PrincipalOrgID"

      values = [
        "${local.tvlk_org_id}",
      ]
    }
  }
}

data "template_file" "tvlk_build_ecr_lifecycle_policy" {
  template = "${file("${path.module}/lifecycle.json.tpl")}"
}
