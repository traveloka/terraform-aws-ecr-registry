# terraform-aws-ecr-repository
[![CircleCI](https://circleci.com/gh/traveloka/terraform-aws-ecr-repository/tree/master.svg?style=svg)](https://circleci.com/gh/traveloka/terraform-aws-ecr-repository/tree/master)

Terraform module for creating ECR Repository

## Usage
```hcl
module "ecr" {
  source  = "traveloka/terraform-aws-ecr-repository"
  version = "0.1.0"
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| delete\_timeout | How long to wait for a repository to be deleted. Check [Timeout](https://www.terraform.io/docs/configuration/resources.html#timeouts) for more detail. | `string` | `"20m"` | no |
| environment | Environment where the service run | `string` | n/a | yes |
| image\_tag\_mutability | The tag mutability setting for the repository. Must be one of: `MUTABLE` or `IMMUTABLE` | `string` | `"MUTABLE"` | no |
| lifecyle\_policy | The lifecycle policy of this repository | `string` | `""` | no |
| product\_domain | The product domain that this service belongs to | `string` | n/a | yes |
| repo\_name | Name of the repository | `string` | n/a | yes |
| repository\_policy | The access policy of this repository | `string` | `""` | no |
| scan\_on\_push | Indicates whether images are scanned after being pushed to the repository (`true`) or not scanned (`false`) | `string` | `"false"` | no |
| standard\_resource\_naming | Use standard naming with random id | `string` | `"true"` | no |
| tags | Custom tags for ECR Repo | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Full ARN of the repository. |
| name | The name of the repository. |
| registry\_id | The registry ID where the repository was created. |
| repository\_url | The URL of the repository |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->