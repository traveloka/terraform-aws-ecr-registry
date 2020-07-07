# Terraform AWS ECR Repository / tvlk-build
You use this module to create an AWS ECR repository inside tvlk-build account.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_role | Primary role/function of the cluster. See [Common Cluster Roles](https://29022131.atlassian.net/l/c/53iwUAPw) for more examples | `string` | `"app"` | no |
| delete\_timeout | How long to wait for a repository to be deleted. Check [Timeout](https://www.terraform.io/docs/configuration/resources.html#timeouts) for more detail. | `string` | `"20m"` | no |
| lifecyle\_policy | The lifecycle policy of this repository | `string` | `""` | no |
| max\_number\_of\_dev\_images | Maximum number of production images stored in repository | `string` | `"5"` | no |
| max\_number\_of\_prod\_images | Maximum number of production images stored in repository | `string` | `"3"` | no |
| product\_domain | Product domain abbreviation, e.g. bei | `string` | n/a | yes |
| repository\_policy | The access policy of this repository | `string` | `""` | no |
| scan\_on\_push | Indicates whether images are scanned after being pushed to the repository (`true`) or not scanned (`false`) | `string` | `"false"` | no |
| service\_name | Service name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | Full ARN of the repository. |
| name | The name of the repository. |
| registry\_id | The registry ID where the repository was created. |
| repository\_url | The URL of the repository |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->