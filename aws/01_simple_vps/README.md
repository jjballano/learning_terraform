Following the videos on https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

After creating `main.tf` file, run:
`terraform init`
This will download providers and create `.terraform` folder.

To release the server we just configured in main file, just run:
`terraform apply`

To delete all that we just created, run:
`terraform destroy`