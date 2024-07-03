# Introduction to DevOps Challenges

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

## Challenge 2

The next challenge is to build 2 CI/CD pipelines using GitHub Actions:

1. The first pipeline should run on every push to the `main` branch and run the tests as `pytest`.
2. The second one should run on every push to the `main` branch and build and push the docker image.

### Running the tests

To run the tests, you can use the following command:

```bash
pytest
```

### Running Docker Image
To build the image, you can use the following command:

```bash
docker build -t challenge2:dev .
```

**EXTRA**
For extra points, you can deploy the image to a container registry (dockerhub).