## Task2.2

## 1. Read the terms of Using the AWS Free Tier and the ability to control their own costs.

There are three types of offers on the free tier:
- always free;
- 12 months free;
- trials.

At the "always tier", products such as Amazon DynamoDB 25 GB storage, AWS Lambda 1 million requests per month, Amazon Glacier 10 GB retrievable data, AWS CpdePipeline1 active container per month, and others are available for free.
The "12 month free" tier includes Amazon EC2 750 hours per month, Amazon S3 5 GB standard storage, Amazon RDS 750 hours db.t2.micro database instance usage (with applicable DB engines) per month, AWS Data Pipeline 3 preliminary low frequency conditions and others.
"Trials" include Amazon SageMaker 250 hours of notebook usage per t2.medium instance, Amazon Redshift 2 months, and more.


## 2. Register with AWS.

> ![GitHub Logo](screens/2.png)

## 3. Review the 10-minute example Launch a Linux Virtual Machine with Amazon Lightsail. Repeat, create your own VM in the AWS cloud and connect to it.

- Select your instance location

> ![GitHub Logo](screens/4_1.png)

- Pick your instance image

> ![GitHub Logo](screens/4_2.png)

- Launch script

> ![GitHub Logo](screens/4_3.png)

- SSH key pair manager (default) and Enable automatic shapshots

> ![GitHub Logo](screens/4_4.png)

- Choose your instance plan

> ![GitHub Logo](screens/4_5.png)

- Identify your instance and create

> ![GitHub Logo](screens/4_6.png)

- The Instance is reade for connection

> ![GitHub Logo](screens/4_7.png)

- Connect to instance

> ![GitHub Logo](screens/4_8.png)


## 4. Launch another Linux Virtual Machine without Amazon Lightsail.

- Step 1: Choose an Amazon Machine Image (AMI)

> ![GitHub Logo](screens/3_1.png)

- Step 2: Choose an Instance Type

> ![GitHub Logo](screens/3_2.png)

- Step 3: Configure Instance Details

> ![GitHub Logo](screens/3_3.png)

- Step 4: Add Storage

> ![GitHub Logo](screens/3_4.png)

- Step 5: Add Tags

> ![GitHub Logo](screens/3_5.png)

- Step 6: Configure Security Group

> ![GitHub Logo](screens/3_6.png)

- Step 7: Review Instance Launch

> ![GitHub Logo](screens/3_7.png)

- Select an existing key pair

> ![GitHub Logo](screens/3_8.png)

- Check an instance

> ![GitHub Logo](screens/3_9.png)

- Connect to instance using MobaXterm

> ![GitHub Logo](screens/3_10.png)

## 5. Create a snapshot of your instance to keep as a backup.

- Select Volumes

> ![GitHub Logo](screens/5_1.png)

- Create a shapshot

> ![GitHub Logo](screens/5_2.png)

> ![GitHub Logo](screens/5_3.png)

> ![GitHub Logo](screens/5_4.png)

> ![GitHub Logo](screens/5_5.png)

## 6. Create and attach a Disk_D (EBS) to your instance to add more storage space. Create and save some file on Disk_D.

- Create Volume

> ![GitHub Logo](screens/6_1.png)

> ![GitHub Logo](screens/6_2.png)

- Attach a Disk to my instance

> ![GitHub Logo](screens/6_3.png)

- mount Disk_D

> ![GitHub Logo](screens/6_4.png)

- Create and save some file

> ![GitHub Logo](screens/6_5.png)

## 7. Launch the third instance from backup.

- Create Image from EBS snapshot

> ![GitHub Logo](screens/7_1.png)

> ![GitHub Logo](screens/7_2.png)

- Launch the third instance from backup

> ![GitHub Logo](screens/7_3.png)

> ![GitHub Logo](screens/7_4.png)

> ![GitHub Logo](screens/7_5.png)

> ![GitHub Logo](screens/7_6.png)

> ![GitHub Logo](screens/7_7.png)

> ![GitHub Logo](screens/7_8.png)

> ![GitHub Logo](screens/7_9.png)

> ![GitHub Logo](screens/7_10.png)

> ![GitHub Logo](screens/7_11.png)

## 8. Detach Disk_D from the 2nd instance and attach disk_D to the new instance.

- Detach Disk_D from the 2nd instance

> ![GitHub Logo](screens/8_1.png)

- Attach disk_D to the new instance.

> ![GitHub Logo](screens/8_3.png)

> ![GitHub Logo](screens/8_4.png)

## 9. Launch and configure a WordPress instance with Amazon Lightsail

- Create an instance

> ![GitHub Logo](screens/9_1.png)

- Choose your instance image

> ![GitHub Logo](screens/9_2.png)

- Choose an instance plan

> ![GitHub Logo](screens/9_3.png)

- Enter a name for your instance. 

> ![GitHub Logo](screens/9_4.png)

- On the Instances tab of the Lightsail home page, choose the SSH quick-connect icon for your WordPress instance.

> ![GitHub Logo](screens/9_5.png)

- After the browser-based SSH client window opens, enter the following command to retrieve the default application password:

> ![GitHub Logo](screens/9_6.png)

-  In a browser, go to: http://34.222.85.153/wp-login.php

> ![GitHub Logo](screens/9_7.png)

> ![GitHub Logo](screens/9_8.png)

- On the Instances tab of the Lightsail home page, choose your running WordPress instance.

> ![GitHub Logo](screens/9_9.png)

- Choose the Networking tab, then choose Create static IP.

> ![GitHub Logo](screens/9_10.png)

- The static IP location, and attached instance are pre-selected based on the instance that you chose earlier in this tutorial.

> ![GitHub Logo](screens/9_11.png)

- Name your static IP, then choose Create. 

> ![GitHub Logo](screens/9_12.png)

- On the Networking tab of the Lightsail home page, choose Create DNS zone

> ![GitHub Logo](screens/9_13.png)

- Enter your domain, then choose Create DNS zone. 

> ![GitHub Logo](screens/9_14.png)

- Make note of the name server address listed on the page. 

ns-1699.awsdns-20.co.uk
ns-18.awsdns-02.com
ns-1152.awsdns-16.org
ns-576.awsdns-08.net

> ![GitHub Logo](screens/9_15.png)

- After management of your domain's DNS records are transferred to Lightsail, add an A record to point the apex of your domain to your WordPress instance

> ![GitHub Logo](screens/9_16.png)

> ![GitHub Logo](screens/9_17.png)

## 10. Store and Retrieve a File. Creating your own repository.

- Enter the Amazon S3 Console

> ![GitHub Logo](screens/10_1.png)

- In the S3 dashboard, click Create Bucket.

> ![GitHub Logo](screens/10_2.png)

> ![GitHub Logo](screens/10_3.png)

> ![GitHub Logo](screens/10_4.png)

> ![GitHub Logo](screens/10_5.png)

- Upload a File

> ![GitHub Logo](screens/10_6.png)

> ![GitHub Logo](screens/10_7.png)

- To select a file to upload, either click Add files and select a sample file that you would like to store OR Drag and Drop a file on the upload box. Select Next after you have selected a file to upload.

> ![GitHub Logo](screens/10_8.png)

> ![GitHub Logo](screens/10_9.png)

- Retrieve the Object. Select the checkbox next to the file you would like to download, then select Download.

> ![GitHub Logo](screens/10_10.png)

- Delete the Object and Bucket. Select the checkbox next to the file you want to delete and select More > Delete.

> ![GitHub Logo](screens/10_11.png)

> ![GitHub Logo](screens/10_12.png)

- Click on Amazon S3 to view all your buckets in the region. Click to the right of the bucket name of the bucket you created to selected it, then click Delete .

> ![GitHub Logo](screens/10_13.png)

> ![GitHub Logo](screens/10_14.png)

> ![Github Logo](screens/10_15.png)

## 11. Create a user AWS IAM, configure CLI AWS and upload any files to S3.

- Step 1: Create an AWS IAM User

> ![Github Logo](screens/11_1.png)

> ![Github Logo](screens/11_2.png)

> ![Github Logo](screens/11_3.png)

> ![Github Logo](screens/11_4.png)

> ![Github Logo](screens/11_5.png)

> ![Github Logo](screens/11_6.png)

- Step 2: Install and Configure the AWS CLI

> ![Github Logo](screens/11_7.png)

> ![Github Logo](screens/11_8.png)


- Step 3: Using the AWS CLI with Amazon S3

> ![Github Logo](screens/11_9.png)

> ![Github Logo](screens/11_10.png)

> ![Github Logo](screens/11_11.png)

> ![Github Logo](screens/11_12.png)

> ![Github Logo](screens/11_13.png)

> ![Github Logo](screens/11_14.png)

## 12. Explore the possibilities of creating your own domain and domain name for your site.

- Step 1: Obtain a Static URL

> ![Github Logo](screens/12_1.png)

> ![Github Logo](screens/12_2.png)

> ![Github Logo](screens/12_3.png)

> ![Github Logo](screens/12_4.png)

> ![Github Logo](screens/12_5.png)

- Step 2: Register a Domain Name

> ![Github Logo](screens/12_6.png)

> ![Github Logo](screens/12_7.png)

> ![Github Logo](screens/12_8.png)

Example your domain

> ![Github Logo](screens/12_9.png)

- Step 3: Configure DNS

Created my domain zone

> ![Github Logo](screens/12_10.png)

Created a new record

> ![Github Logo](screens/12_11.png)

> ![Github Logo](screens/12_12.png)


## 13. Review the 10-minute example Deploy Docker Containers on Amazon Elastic Container Service. Repeat, create a cluster, and run the online demo application.

- Step 1: Set up your first run with Amazon ECS

> ![Github Logo](screens/13_0.png)

- Step 2: Create a task definition

> ![Github Logo](screens/13_1.png)

- Step 3: Configure your service

> ![Github Logo](screens/13_2.png)

> ![Github Logo](screens/13_3.png)

- Step 4: Configure your cluster

> ![Github Logo](screens/13_4.png)

- Step 5: Launch and view your resources

> ![Github Logo](screens/13_5.png)

> ![Github Logo](screens/13_5_1.png)

- Step 6: Open the Sample Application

> ![Github Logo](screens/13_6.png)

    EC2 > Load Balancers

> ![Github Logo](screens/13_7.png)

> ![Github Logo](screens/13_8.png)

- Step 7: Delete Your Resources

> ![Github Logo](screens/13_9.png)

> ![Github Logo](screens/13_10.png)

> ![Github Logo](screens/13_11.png)

After you update your service, select Delete.

> ![Github Logo](screens/13_12.png)

> ![Github Logo](screens/13_13.png)

Delete your load balancers:

> ![Github Logo](screens/13_14.png)

> ![Github Logo](screens/13_15.png)

Delete your claster:

> ![Github Logo](screens/13_16.png)

## 14. Create a static website on Amazon S3, publicly available. Post on the page your own photo, the name of the educational program, the list of AWS services with which the student worked within the educational program or earlier and the full list with links of completed labs (based on tutorials or qwiklabs or re:Invent 2020). Provide the link to the website in your report.

- Step 1: Create a bucket

> ![Github Logo](screens/14_1.png)

- Step 2: Enable static website hosting

> ![Github Logo](screens/14_2.png)

Step 3: Edit S3 Block Public Access settings

> ![Github Logo](screens/14_3.png)

> ![Github Logo](screens/14_4.png)

> ![Github Logo](screens/14_5.png)

- Step 4: Add a bucket policy that makes your bucket content publicly available

> ![Github Logo](screens/14_6.png)

- Step 5: Configure an index document

> ![Github Logo](screens/14_7.png)

- Step 6: Test your website endpoint

> ![Github Logo](screens/14_8.png)

> [Link to static site](http://site-epam-devops.com.s3-website-us-east-1.amazonaws.com/)
