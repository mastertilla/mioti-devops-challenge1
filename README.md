# Introduction to DevOps

## Challenge 1

### Description
Complete the challenge with a pull request to this repository (use a fork).
The challenge has been explained in the slides.

### Running Terraform

First, ensure that you have authenticated to AWS using the AWS CLI:

```bash
aws configure
```

Then, you can initialize Terraform (only required once):

```bash
terraform init
```

To deploy your need infrastructure you need to run the following commands.
First, format your code and validate it:

```bash
terraform fmt && terraform validate
```

Then, you can plan the deployment:

```bash
terraform plan -out plan.out
```

Finally, you can apply the deployment:

```bash
terraform apply plan.out
```