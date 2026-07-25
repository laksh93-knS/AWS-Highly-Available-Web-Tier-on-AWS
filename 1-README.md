# AWS Highly Available Web Tier on AWS

## 📌 Project Overview

This project demonstrates how to deploy a **Highly Available Web Application** on **Amazon Web Services (AWS)** using multiple AWS services. The infrastructure is designed to improve **availability, scalability, reliability, and fault tolerance** by distributing traffic across multiple EC2 instances and automatically scaling resources based on demand.

This project was built as part of my **Linux, AWS, and DevOps** learning journey and showcases practical cloud infrastructure deployment.

---

## 🚀 AWS Services Used

* Amazon EC2
* Amazon VPC
* Public Subnets
* Internet Gateway
* Route Tables
* Security Groups
* Application Load Balancer (ALB)
* Auto Scaling Group (ASG)
* Amazon CloudWatch
* Amazon SNS
* IAM

---

## 🏗️ Architecture

```
                Internet
                    │
                    ▼
        Application Load Balancer
                    │
          ┌─────────┴─────────┐
          │                   │
      EC2 Instance 1     EC2 Instance 2
          │                   │
          └─────────┬─────────┘
                    │
            Auto Scaling Group
                    │
              Amazon CloudWatch
                    │
              Amazon SNS Email
```

---

## ✨ Features

* High Availability architecture
* Load balancing using Application Load Balancer
* Automatic scaling with Auto Scaling Group
* CloudWatch monitoring and alarms
* SNS email notifications
* Secure networking using VPC and Security Groups
* Public subnet deployment
* Fault-tolerant infrastructure

---

## 📁 Project Structure

```
aws-ha-web-tier/
│
├── README.md
├── architecture.png
├── userdata.sh
├── screenshots/
│   ├── vpc.png
│   ├── ec2.png
│   ├── alb.png
│   ├── asg.png
│   └── cloudwatch.png
└── notes.md
```

---

## ⚙️ Deployment Steps

1. Create a VPC.
2. Create public subnets.
3. Attach an Internet Gateway.
4. Configure route tables.
5. Create Security Groups.
6. Launch EC2 instances.
7. Configure the Application Load Balancer.
8. Create a Target Group.
9. Configure the Auto Scaling Group.
10. Create CloudWatch alarms.
11. Configure SNS email notifications.
12. Test load balancing and Auto Scaling.

---

## 📸 Screenshots

The repository includes screenshots of:

* VPC Configuration
* EC2 Instances
* Application Load Balancer
* Auto Scaling Group
* CloudWatch Alarms
* SNS Email Notification

---

## 🔒 Security Features

* Security Groups configured with least-privilege access
* SSH access restricted to authorized users
* HTTP traffic allowed through the Load Balancer
* IAM used for secure AWS resource permissions

---

## 🧪 Testing Performed

* Verified website accessibility through the Load Balancer.
* Confirmed EC2 instances were registered in the Target Group.
* Tested Auto Scaling configuration.
* Verified CloudWatch alarms.
* Confirmed SNS email notifications were successfully received.

---

## 📚 Skills Demonstrated

* AWS Cloud Infrastructure
* Amazon EC2
* Amazon VPC
* Networking
* Application Load Balancer
* Auto Scaling
* CloudWatch Monitoring
* Amazon SNS
* Linux Server Administration
* Cloud Security Fundamentals

---

## 📖 What I Learned

* Designing highly available AWS infrastructure
* Configuring secure cloud networking
* Implementing automatic scaling
* Monitoring AWS resources with CloudWatch
* Sending automated alerts using SNS
* Deploying resilient cloud applications

---

## 👨‍💻 Author

**Laksh Sonar**

Aspiring Linux System Administrator | AWS Cloud Engineer | DevOps Learner

---

⭐ If you found this project useful, feel free to star the repository.
