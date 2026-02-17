# Cloud Computing:
On demand delivery of IT resources over the internet with pay-as-you-go pricing.

## Explaintation:
Access computing resources (like servers, storage, database, and software) over the internet, rather than owning
and maintaining physical hardware.

# Cloud Service provider:
- Amazon Web Service (AWS)
- Microsoft Azure
- Google cloud Platform (GCP)
- IBM Cloud
- Oracle Cloud
- Alibaba Cloud
- Digital Ocean
- Sales force
- VMware Cloud
- Rackspace Cloud

Virtualization is the proces of creating multiple simulated environments or virtual machines form a single physical hardware system, enabling more efficient resource use.

# Type of Cloud computing
- Iaas (infrastructure as a Service)
- Paas (Platform as a Service)
- Saas  (Software as a Service)

### Iaas (Infrastructure as a Service)
You get virtual infrastructure
You manage almost everything except the physical hardware

You manager
 - OS
 - Runtime
 - Middleware
 - Application
 - Data

 Provider Managers
 - Physical servers
 - Storage
 - Networking
 - Virtualization

 Example
 - AWS EC2
 - Azure Virtual Machine

 ## Paas (Platform as a Service)
 You focus on code
 The platform manages infrastructure + runtime
 You manage:

 - Application code
 - Data

 Provider Manages
 - Infrastructure
 - OS
 - Runtime
 - Middleware
 - Scaling
 Examples
 Azure App Service
 AWS Elastic Beanstalk
 Google App Engine
 ### Best for : fast development, less ops work

 ## Saas (Software as a Service)
 You just use the software
 Everything is managed by the provider

 You manage:
 - Users
 - Data (input/output)

 Provider manages
 - Application
 - Platform
 - Infrastructure
 - Updates
 - Security

 Examples
 - Gmail
 - Microsoft 365
 - Salesforce
 - Zoom

 Comparision Table
 Layer             Iaas                   Paas                  Saas
 Applications      You                    You                    Provider
 Data              You                    You                    Provider
 Runtime           You                    Provider               Provider
 OS                You                    Provider               Provider
 Virtualization    Provider               Provider               Provider
 Servers           Provider               Provider               Provider

 ### Simple ananlogy
 - IaaS - Renting a house (you manage everything inside)
 - PasS - Serviced apartment (basic services included)
 - Saas - Hotel (just use it)

 IaaS Provide Infrasture
 PaaS provides a development platform
 SaaS provide complete software solution, each reducing the level of user management responsibility

 --------------------------------------
 # Slide 7.
 
### How do websites work?

### Well we have a server hosted somewhere, and we, as a web browser, want to get access to that server to visualize a websites.
- What we are going to do as a client is use a network.
A network between ourselves and the server, and the client will find the network and will use network to route the packets, the data into the server,
then the server will reply to us, and we will get the response, and we can view a website.

### Obviously that is very simplified, but that gives you an idea. Now for the clients to find the server and the server to find the clients,

you need to have IP addresses. So a clients have IP addressesand a server also have an IP address.
And so the idea is that when you use an IP address, you can send a request to wherever you want to the server you want, and the server can know how to find you back.

For example, you would write a letter, and that would be your data, and you would be the client, then when you send the letter you put it in your mailbox,

and then the network will be the network of the post office, then the post office will use network and the address you put on the letter to route your letter to the destination,

which is, in this case, the server,

and then if your correspondent wants to reply you back, they can use the address you put on the back of the envelope to write you back, and again, use the same network to get the letter back to you.

So servers are just like the network of your mail.

Hopefully that's a good analogy.
So what is in a server?

Well a server is going to contain a CPU,

and a CPU is a little piece

that will be doing some computations,

it will be very helpful

to do some calculations and find results,

and then, your server also needs RAM, or memory.

This is going to be very, very fast memory,

which will allow us to store information

and retrieve it very quickly.

So when we have a CPU and a memory bar, what do we get?

Well we get a brain.

Think of your brain.

When you are thinking, you are actually making computations,

very complicated ones, but they are computations,

but then you need to retain some information,

and again, we have memories

and these memories are in our brain,

so if we think of the CPU and the RAM together,

they sort of look like a brain.

Now we also need to have

some more long-term storage of data.

Obviously it's still in our brain as humans,

but in computers, we have included

some special storage to store data, for example, files,

and then if we want to store the data

in a more structured way, we're going to use a database,

and a database is going to be data formatted in a way

that we can easily search it and query it.

Finally in the server,

we're also going to have some networking aspect.

So there's going to be the routers, switch, DNS servers,

and don't worry, all these terms,

we'll be seeing them later on in this course.

So in the server, we an aspect of compute, memory, storage,

maybe your server sometimes is a database,

and we have a networking aspect.

All these things are gonna super important going forward

because the cloud is going to be giving these things

for us on demand.

So if we just want to define
the network is a bunch of cables, routers, and servers

that are going to be connected with each other,

and the router is a specific device

that will forward the data packets

between computer in the networks, and they will know

where to send your packets on the internet,

just like your post delivery service.

Now when we have a packet and it arrives as a destination,

there's a switch, and the switch

will send the packet to the correct clients on your network.

So if we put all these things together, it looks like this.

Our client will send the data to a router,
the router will find it's way all the way to a switch,

and the switch will know to which computer

in your network to send the data to.

Well, let's go back to traditional IT.

When people used to start websites or companies before,

they used to do it in their home or their garage,

and so they would literally go to the store,

buy a server, and they put the server in their home.

You may have seen TV shows,

you may have read some documentation on the internet

that describes on how Google was made.

You know, Google was started in a garage.

Now, as your website grows, you need to add

more and more servers to serve that demand,

that demand,

and so your home starts to be filled with servers.

So this bad right, but your company is getting bigger,

you're generating some money,

so you're going to move to your own office,

and you decide to allocate a special room

which is going to be called a data center.

In a data center, you're going to have, again, your servers,

and you're going to be able to scale them

by adding and purchasing more and more servers.

Now this worked, and this worked for so many years,

but there are a few problems with this approach.

Number one is that when you have a data center

or your own home, you're going to have to pay your rent,

then you're going to have to add power supply,

cooling, and maintenance

because it does require some electricity

to run your servers, it does require some cooling

because the servers do get hot,

and sometimes they break down,

so you need someone to do the maintenance.

On top of it, if you want to add or replace servers,

it will take a lot of time because you have to order them,

and then you have to hook them up in your center.

Scaling is limited.

If tomorrow you're getting 10 times bigger,

you're going to need 10 times more servers,

but you may not have the time or the space to do so.

You also need to hire a team

that is going to be there all the time,

24/7 to monitor the infrastructure

in case something goes wrong.

And what if there is a disaster,

what if there is an earthquake,

what if there's a power shutdown, or even a fire?

That would be bad, right?

So can we externalize all this?

And the answer is yes, and that will be the cloud.

So I will see you in the next lecture

to discuss a little bit more about the cloud.

---------------------------------------------------
# Slide 2 What is cloud computing
## cloud computing is the on-demand delivery of compute power, database storage, applications, and IT resources.
## through a cloud services platform with pay-as-you-go pricing
## You can provision exactly the right type and size of computing resources you need
## You can access as many resources as you need, almost instantly
## simple way to access servers, storage, database and a set of application services.

## Amazon Web Services owns and maintains the network-connected hardware required for these application services, while you provision and use what you need via a web application.

## You have been using some cloud services
### 1. Gmail
  Email cloud services
  Pay for only cloud services

## Dropbox
### you Maybe you've stored some data on the cloud, maybe through Dropbox, Google Drive, Google Photos, iCloud, I don't know.

### But with Dropbox, for example, it's a cloud store service, you're going to put your files on Dropbox. And originally, fun fact, Dropbox was built on AWS.

## So we've been using a cloud storage service as well without knowing it.

## And Netflix, it's huge. It is built entirely on AWS and it provides you a cloud service, which is to get video on-demand.

## Now, obviously these cloud services are very different from AWS, but we'll learn what it goes behind these services and how AWS can help you buil these kinds of cloud services.

## The first one is called a private cloud and the provider is, could be Rackspace. This is cloud services used by a single organization,

## they're not exposed to the public, so you get your own private cloud, your own private data center,

## it's just managed by someone else. You still have complete control over it and you have more security for a sensitive application, which may need some specific business needs.

## This is out of scope for this course,

# Public CLoud

## So three famous cloud providers that are public, are Microsoft Azure, Google Cloud, and Amazon Web Services that we'll be learning in this course, obviously.

## So in this case, the cloud resources own and operated by a third party cloud service provider and and they're delivered over the Internet

# Hybrid Cloud
## And then lastly, which is also important for the exam is the concept of a hybrid cloud.

## So with hybrid, we're actually getting the mix of private and public.

## We're going to keep some servers on premises and we'll extend some of the capabilities we need into the cloud.

## That means that we'll have a hybrid of our own infrastructure and the AWS cloud.

# Five chararcteristics of Cloud Computing

## The first one is that it's fully on-demand and self service. Users, and we'll see this in this course, we will be able to provision resources and use them without having anyone from AWS intervene.

## Then we'll be having access to a broad network, the resources will be available over the network, and it can be accessed in diverse ways

## It'll be multi-tenancy and we'll have resource pooling. So that means that not just us, but other customers from AWS can share the same infrastructure and applications while still having security and privacy.

## And then these multiple customers are getting serviced from the same physical resources.

## So here, me, you, and other customers, So here, me, you, and other customers, we're going to share this entire data center of the cloud.

## This gives us rapid elasticity and scalability. That means that we can automatically and quickly acquire and dispose resources when we need.

## And that means that we can quickly and easily scale based on demand. And that is a major advantage of the cloud.

# Six Advanatage of Cloud Computing

## We're going to trade capital expenses for operational expenses, so CAPEX or OPEX. That means that you don't own hardware,

## you're going to pay on-demand and that will reduce your total cost of ownership, your TCO, and your operational expense.

## That means that you don't buy the hardware in advance, you're just going to rent it from AWS.

## Then we're going to benefit from massive economies of scale. The price is because we are using AWS, not just us, but other customers and so many people are using it,

## then the prices will be reduced by AWS over time because AWS will be more efficient at running due to its large scale. We also need to stop guessing capacity.

## Before we had to plan and buy servers in advance and hope that it would meet the capacity,

## but now we can actually scale automatically based on the actual measured usage for our application. And because everything's on-demand, we have increased speed and agility. We can create, operate and do stuff right away, no blockers for us to be efficient.
## And finally, we have a huge cost that we don't need to have anymore, which is we can stop spending money running and maintaining data centers.

## And this allows a team of say five people to create a global application in minutes, thanks to leveraging this AWS global infrastructure that is going to be worldwide.

## Okay. So the problems we've just solved by using the cloud is that we're more flexible, we're more cost effective, we are more scalable because we can add resources as we need to go along,

## . So the problems we've just solved by using the cloud is that we're more flexible, we're more cost effective, we are more scalable because we can add resources as we need to go along,

## we're elastic, we can scale out and scale-in when needed, we also have high availability and fault tolerance because we don't really on the one data center, we rely on the fleet of data centers all around the world.

## We're more agile, we can rapidly develop, test and launch software applications, and although this make the cloud a really no brainer.

## So that's it, just for an introduction of how the cloud is going to be effective.
--------------------------------------------------
# Slide N0-4 Types of Cloud Computing
## First one is IAAS
### As we will see in this course, there are different types of cloud computing and it is important for us to be able to recognize them.

### The first one is called Infrastructure as a Service or IaaS.

### This is to provide the building blocks for cloud IT. With this IAAS, we're going to provide networking, computers and data storage space in its raw form. And using these building blocks, (indistinct) building LEGOs,

### We're going to be given a very high level of flexibility and we can easily understand how we can migrate from traditional on-premises IT to the cloud.

## Second one is PaaS (PaaS)

### Then we're gonna get platform as a service. In this, we're going to remove the need for your organization to manage the underlying infrastructure, and you can just focus on the deploymentand management of your applications.

### And then one step even further is software as a service or SaaS. This is a completed product that is going to be run and managed by the service provider. So if you wanna compare all these things, well,

### let's look at an example.

On premises, you're going to manage everything. So your applications, your data, your runtime, your middleware, the operating system, virtualization,servers, storage and networking.

And that's a lot. With IaaS, so infrastructure as a service, we're going to manage the application, the data, the runtime, the malware, and the OS.

But all the virtualization servers, storage and networking are going to be managed by others. And in our case, AWS.

### With platform as a service, we manage even less.

### So everything from the runtime to the networking is managed by AWS. And the only thing we care about when we use a platform as a service is our application and our data.
# slide 7

### Well, with IaaS, we can use Amazon EC2 on AWS, but we have other services, such as Google Cloud, Azure, Rackspace, Digital Ocean and Linode,

### which will provide us a cloud computing infrastructure as a service.

### Well, with IaaS, we can use Amazon EC2 on AWS, but we have other services, such as Google Cloud,

### Azure, Rackspace, Digital Ocean and Linode, which will provide us a cloud computing infrastructure as a service.

### For software as a service, we'll also have this on AWS that represents many services of AWS, for example, Rekognition where we want to do some machine learning, but we've been using it as well in the real world with Google Apps, such as Gmail or Dropbox or Zoom for your meetings.So the Cloud has different flavors, but one thing is common is that the pricing is very different from what you know.

# slide 8

# Pricing of the Cloud

## AWS has three pricing fundamentals 
### it will follow the pay-as-you-go pricing model.

## So for the compute, and that represents various services, we're going to pay for the exact compute time.

## For the storage, we're going to pay for the exact amount of data stored in the cloud.

## And for the networking, we're going to only pay when the data leaves the cloud.

## Any data that goes into the cloud is free.

### And this solves the expensive issue of traditional IT because now we only pay exactly what we need. And so we have huge cost savings ahead of us.
# Slide 9


-----------------------------------------
## AWS Cloud Overview
# Slide 10
# Slide 11
# Slide 12

## AWS Global Infrastructure
# Slide 13

# AWS Regions
## AWS has Regions all around the world.
## The regions has Names like us-east-1, eu-west-3
# Slide 14

## A region is a cluster of data centres. Many different data centres are located in ohio, singapore, syndey and tokyo etc

## when we are using AWS Service, most of the AWS Services are region-scoped. If you are using service in one region and we try to use service on another region then it will be new type of using service.

# How to chose an AWS Region?
if you need to launch a new application, where should you do it, you want in america, europe or south america. of cours the answer is it depends.

# few factors which will affect to chose the AWS Regions
1. Compilance with data goverance and legal requirements: data never leaves a region without your explicit permission. for example, Data in france may have to stay in france so you have to launch  the application in france region
2. Proximity to customers: reduced latency. Most of user are in america then your applicaiton will be in america becaues it reduced the latency. if you deploy on australia. it have more latency.
3. Available services within a Region: new services and new feature arenot available in every region. for example, if you want to leverage the application then it must be sure that sevices must exist in the region.
4. Pricing: pricing varies regin to region and is transparent in the service pricing page. this is the critical factor which you want to deploy the applicaiton in region
# Slide 15
# AWS Availablility Zones:
## Each region has many availablility zones (usually 3, min is 3, max is 6) Example  Each region have many availablity zones. if we take the example of syndey region, it code is "ap-southeast-2"
1. ap-southeast-2a
2. ap-southeast-2b
3. ap-southeast-2c

## each of the availablity zones is one or more discrete data centers with redundant power, networking and connectivity. May in ap-southeast-2a, i have two datacentres, ap-southeast-2b, i have two datacenters, in ap-southeast-2c, i have two datacentres but it could be one, three or four without knowing it. what important we know
## THis availablility zones are separate from each other,so that they are isolated from disasters. if somethings happen in ap-southeast-2a office, we are cascade it from ap-southeast-2b office and ap-southeast-2c office

## they are connected with high bandwidth, ultra-low latency networking. They are altogether  and linked together to form regions
# Slide 15
-------------
# AWS Points of Presence (Edge Locations)
AWS for Global Infrastructure is the Points of Presence (Edge Locations)
Amazon has 400 + Points of Presence (400+ Edge Locations & 10 + Regional Caches) in 90 + cities across 40+ countries.
# it is very helpful when we want to delive the Content to end users with lower latency
# Slide 16

-------------------------------
# Tour of the AWS Console
## AWS has Global Services:
 1. Identity and Access Management
 2. Route 53 (DNS service)
 3. CloudFront (Content Delivery Network)
 4. WAF (Web Application Firewall)
 ## Most AWS services are Region-scoped
  1. Amazon EC2 (Infrastructure as a Service)
  2. Elastic Beanstalk (Platform as a Service)
  3. Lambda (Function as a Service)
  4. Rekognition (Software as a Service)

To look the region, you can use this
https://aws.amazon.com/about-aws/global-infrastructure/regions_az/
  # IF we want to see the services exist, we have region table by url
  # Slide 17

  ----------------------------
  # AWS Console UI Update

  ### aws global infrastrucute website tell you which service are located in which region
  ### For example
  ### Route53 service is a global infrasturture service (which is not in region). THis service do not require region. Some service in the AWS are global. No matter where you are and you have same view.

  ### if you go to EC2 instance then you look at top right, it show the region different in canda and ireland.

  if you write this # aws global infrastruture.
  THis give you lot of information around your services.
  One thing we have to look at # AWS Regional Service List
# Slide 18
i can check in the region specific and are this service exist in this region
through writing this in google in aws global infrastructure and press # regional



----------------------------------------
# Slide 13 Shared responsiblity Model
  # Slide 19

  # This is what define what is your responsibility versus AWS when using the cloud and there is a shared responsibility.
  ### You as a customer, you're responsible for the security in the cloud. So whatever you use in the cloud, however you configure it is your entire responsibility. That includes security, your data, your operating system,
### your network and firewall configuration, et cetera.

## And AWS is going to be responsible for the security of the cloud. So all the infrastructure, all the hardware, all the software, all their own internal security, they are responsible of.

## And this is why we have shared responsibility.

# Quiz Done

--------------------
---------IAM----------
# IAM
## IAM: Users & Groups
## IAM = Identity and Access Management, Global Service
# In IAM, we are going to create our users and assign them to group. when we created an account, we created a root accounts, and has been created by default. This is the root user of our accounts.

## And the only things you should use it for is to set up your account as we'll do it right now.
## What you should be doing instead, is create users. So you will create users in IAM, and one user represents one person within your organization. And the users can be grouped together if it makes sense.

 ### So let's take an example we have an organization with six people.

### You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.

Now Alice, Bob, and Charles they work together. They're all developers.

### So we're going to create a group called the group developers who regrouping Alice,Bob and Charles.

### And it turns out that David and Edward also work together. So we're going to create an operations group.

### Now we have two groups within IAM. 
# Now groups can only contain users, not other groups. So this is something very important to understand. Groups only contain users.

## For example, Fred right here is alone, he does not correspond to any group.

**That is not best practice. But it is something you can do in AWS.**

And also, a user can belong to multiple groups. That means that for example, if you know that Charles and David worked together, and they're part of your audit team,

you can create a third group with Charles and David.

And as you can see, now, in this example,

Charles and David are part of two different groups.

So this is the possible configurations for IAM.

# Slide20
