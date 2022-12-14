Following the videos on https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

After creating `main.tf` file, run:
`terraform init`
This will download providers and create `.terraform` folder.

To release the server we just configured in main file, just run:
`terraform apply`

To delete all that we just created, run:
`terraform destroy`

There is a variable called `aws_profile` defined in `variables.tf` file. In order to override the value when creating the plan, add a parameter `-var`:
`terraform apply -var 'aws_profile=AnotherProfile'`

In order to get the output from the plan applied, create the `outputs.tf` file and add there what you want. When the plan is applied, you'll see those values.
This will print the output when the apply is finished and you can query those values with
`terraform output VAR`. For instance:
`terraform output instance_public_ip`

Instead of storing locally the terraform state, we use [Terraform Cloud](https://cloud.hashicorp.com/products/terraform) and we will be able to collaborate with more people. Terraform Cloud keeps the state secured and encrypted, allow us to version and audit changes and store variables secured.

To use Terraform Cloud, create an account and an organization. Add organization name in `backend` configuration in `main.tf` file.
Login with:
`terraform login`
Once that's done, reinitialize configuration with `terraform init`.
This will create the workspace in Terraform Cloud where we need to define the variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to allow access Terraform to AWS
