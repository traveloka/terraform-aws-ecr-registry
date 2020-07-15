{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Limit prod images",
            "selection": {
                "tagStatus": "tagged",
                "tagPrefixList": ["prod"],
                "countType": "imageCountMoreThan",
                "countNumber": ${max_number_of_prod_images}
            },
            "action": {
                "type": "expire"
            }
        },
        {
            "rulePriority": 2,
            "description": "Limit dev images",
            "selection": {
                "tagStatus": "tagged",
                "tagPrefixList": ["dev"],
                "countType": "imageCountMoreThan",
                "countNumber": ${max_number_of_dev_images}
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}