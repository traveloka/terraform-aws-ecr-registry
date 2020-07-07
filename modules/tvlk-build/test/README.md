## Requirements

| Name | Version |
|------|---------|
| Go | >=1.13 |
| terraform | >= 0.11.14, < 0.12.0 |

## How to run the test

1. To configure dependencies, run:
   
   ```bash
   go mod init "<MODULE_NAME>"
   ```

   Where `MODULE_NAME` is the name of your module, typically in the format `github.com/<YOUR_USERNAME>/<YOUR_REPO_NAME>`. 

2. To run the tests:

   ```bash 
   go test -v -timeout 30m
   ```