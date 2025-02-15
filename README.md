# Dynamic Website & DB Migration on AWS - DevOps Project

This project demonstrates the deployment of a dynamic website on AWS using best practices for scalability, security, and high availability.

## Key Resources
- **VPC**: Public & private subnets across two AZs.
- **EC2 Instances**: Hosts the dynamic website.
- **RDS**: MySQL database instance.
- **ALB**: Load balancing traffic across EC2 instances.
- **Auto Scaling**: Ensures scalability and fault tolerance.
- **Route 53**: Domain management and DNS configuration.
- **S3**: Stores application files and SQL scripts.
- **SNS**: Alerts on Auto Scaling activities.
- **IAM**: Role for EC2 instances with S3 access.

## Setup Instructions
1. **Create a VPC**: Public and private subnets in two AZs.
2. **Security Groups**: Set up for ALB, EC2 instances, RDS, and migration.
3. **Launch EC2 Instances**: In private subnets, use Auto Scaling.
4. **Configure ALB**: Distribute traffic across EC2 instances, with proper health checks.
5. **Set Up RDS**: MySQL database, secured by security groups.
6. **S3 Bucket**: Store SQL migration files.
7. **Database Migration**: Use EC2 instance for migrating data.
8. **Route 53**: Register domain, configure DNS.
9. **SSL**: Secure app with AWS Certificate Manager.
10. **SNS**: Set up for Auto Scaling Group notifications.

## Notes
- Make sure security group rules are correct to avoid issues with the app installation.
- Use the right health check path for the ALB to ensure proper instance health verification.

## Scripts
Find the reference diagrams and scripts in the repo. I wll also add scribbles from my personal notes.
