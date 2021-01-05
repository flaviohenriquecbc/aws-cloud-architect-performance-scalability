# AWS Cloud Architect Nanodegree: Design for Performance and Scalability

This is a project for the Udacity AWS Cloud Architect Nanodegree: Design for Performance and Scalability

# Project Overview

## 1. AWS Architecture Schematics

### Part 1

Plan and provision a cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users. The project requires the following AWS infrastructure and services:

- Infrastructure in the following regions: us-east-1
- Users and Client machines
- One VPC
- Two Availability Zones
- Four Subnets (2 Public, 2 Private)
- A NAT Gateway
- A CloudFront distribution with an S3 bucket
- Web servers in the Public Subnets sized according to your usage estimates
- Application Servers in the Private Subnets sized according to your usage estimates
- DB Servers in the Private Subnets
- Web Servers Load Balanced and Autoscaled
- Application Servers Load Balanced and Autoscaled
- A Master DB in AZ1 with a read replica in AZ2

[Available here](schematics/Udacity_Diagram_1.pdf)

### Part 2

Plan a SERVERLESS architecture schematic for a new application development project. The project requires the following AWS infrastructure and services:

- A user and client machine
- AWS Route 53
- A CloudFront Distribution
- AWS Cognito
- AWS Lambda
- API Gateway
- DynamoDB
- S3 Storage

[Available here](schematics/Udacity_Diagram_2.pdf)


## 2. Infrastructure Costs

### Scenario 1

- Target a monthly estimate between $8,000-$10,000.

[Available here](costs/Initial_Cost_Estimate.csv)

### Scenario 2

- Maximum buged of $6,500

[Available here](costs/Reduced_Cost_Estimate.csv)

### Scenario 3

- Budget of $20,000

[Available here](costs/Increased_Cost Estimate.csv)

## 3. Configure Permissions


a. Update the AWS password policy.
- Minimum password length = 8
- Require at least one uppercase letter
- Require at least one lowercase letter
- Require at least one number
- Require at least one non-alphanumeric character.

b. Group named `CloudTrailAdmins` and give it the two CloudTrail privileges.

c. Group named `Reviewers` and give it the Billing privilege.

d. User named `CloudTrail` and a user named `Accountant`. Users have AWS Console access and the password conforms to the previous password policy. Required to change their password when they login.

e. `CloudTrail` assigned to the `CloudTrailAdmins` group. `Accountant` assigned to the `Reviewers` group.

f. Both user accounts are possible to logging into the AWS console as the users `CloudTrail` and `Accountant` after changing their passwords on login. Login using your numerical AccountID


## 4. Cost Monitoring

a. CloudWatch configured billing alarm

b. Billing alarm with a $5 threshold

c. Notification setup to get an email alert when the alarm is triggered.

## 5. AWS Infrastructure provisioned with Terraform

### Part 1

`main.tf` file write the code to provision:
a. AWS as the cloud provider
b. Use an existing VPC ID
c. Use an existing public subnet
d. 4 AWS t2.micro EC2 instances named Udacity T2
e. 2 m4.large EC2 instances named Udacity M4

### Part 2






