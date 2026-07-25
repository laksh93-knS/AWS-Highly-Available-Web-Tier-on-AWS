#!/bin/bash

# Update the system
yum update -y

# Install Apache Web Server
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Get the instance ID
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Create a simple web page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AWS Highly Available Web Tier</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        .container {
            background: white;
            width: 600px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }
        h1 {
            color: #ff9900;
        }
        h2 {
            color: green;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>AWS Highly Available Web Tier</h1>

    <h2>Apache Web Server Running Successfully</h2>

    <p><strong>Instance ID:</strong> $INSTANCE_ID</p>

    <p>This server is part of an Auto Scaling Group.</p>

    <p>Traffic is distributed through an Application Load Balancer.</p>

    <hr>

    <p>Created by <strong>Laksh Sonar</strong></p>

</div>

</body>
</html>
EOF

# Restart Apache
systemctl restart httpd
