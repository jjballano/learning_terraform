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