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

