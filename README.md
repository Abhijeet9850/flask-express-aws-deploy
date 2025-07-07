
# Flask + Express AWS Deployment

## Structure
- `/backend`: Flask REST API
- `/frontend`: ExpressJS client
- `/scripts`: EC2 & ECS deployment scripts

## Deployment Methods
1. Single EC2 instance (both apps)
2. Separate EC2 instances
3. Docker on ECS using ECR, VPC

## Usage
Follow the steps in `scripts/` to deploy on EC2 or ECS.
