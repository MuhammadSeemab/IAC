# Kubernetes
## Kubernetes, also known as K8's, was built by Google based on their experience running containers in production.
## It is now an open source project and is arguably one of the best and most popular container orchestration technologies out there.

# Kubernetes at high level

We must first understand two things container and orchestration. Once we get familiarized with both of these terms, we would be in a position to understand what Kubernetes
is capable of

### We're now going to look at what containers are.

We're going to start by looking at a high level overview on why you need Docker, and what it can do for you.

Let me start by sharing how I got introduced to Docker in one of my previous projects.

I had this requirement to set up an end to end application stack, including various different technologies

like a web server using Node.js and a database such as MongoDB, and a messaging system like Redis,

and an orchestration tool like Ansible.

# We had a lot of issues developing this application stack with all these different components.


First of all, their compatibility with the underlying OS was an issue.

We had to ensure that all these different services were compatible with the version of OS we were planning

to use.

There have been times when certain versions of these services were not compatible with the OS, and

we've had to go back and look at different OS that was compatible with all of these different services.


Secondly, we had to check the compatibility between these services and the libraries and dependencies

on the OS.

We've had issues where one service requires one version of a dependent library, whereas another service

requires another version.

The architecture of our application changed over time.

We've had to upgrade to newer versions of these components or change the database, etc. and every time

something changed, we had to go through this same process of checking compatibility between these various

components and the underlying infrastructure.

This compatibility matrix issue is usually referred to as the matrix from hell.

# Next, every time we had a new developer on board, we found it really difficult to set up a new environment.

The new developers had to follow a large set of instructions and that run hundreds of commands to finally

set up their environments.

They had to make sure they were using the right operating system, the right versions of each of these

components, and each developer had to set all that up by himself each time.

We also had different development, test, and production environments.

# One developer may be comfortable using one OS, and the others may be comfortable using another one,

and so we couldn't guarantee that the application that we were building would run the same way in different

environments.

And so all of this made our life in developing, building and shipping the application really difficult.

So I needed something that could help us with the compatibility issue, and something that will allow

us to modify or change these components without affecting the other components, and even modify the

underlying operating systems as required.


## And that search landed me on Docker with Docker.

I was able to run each component in a separate container, with its own dependencies and its own libraries,

all on the same VM and the OS, but within separate environments or containers.

We just had to build the Docker configuration once, and all.

Our developers could now get started with a simple docker run command, irrespective of what the underlying

operating system they run.

All they needed to do was to make sure they had Docker installed on their systems.

# What are containers

## Containers are completely isolated environments. As in they can have their own processes or services, their own network interfaces, their own mounts,
just like virtual machines, except they all share the same OS kernel. 


We will look at what that means in a bit, but it's also important to note that containers are not new

with Docker.
![Document](../Images/doc1.png)

Containers have existed for about ten years now, and some of the different types of containers are

LXC, LXD, Lcfs, etc..

Docker utilizes LXC containers.

Setting up these container environments is hard as they are very low level, and that is where Docker

offers a high level tool with several powerful functionalities, making it really easy for end users

like us to understand how Docker works, let us revisit some basic concepts of operating systems first.
first.

If you look at operating systems like ubuntu, fedora, Susi, or CentOS, they all consist of two things

an OS kernel and a set of software.

The OS kernel is responsible for interacting with the underlying hardware, while the OS kernel remains

the same, which is Linux.

In this case, it's the software above it that makes these operating systems different.

This software may consist of a different user interface drivers, compilers, file managers, developer tools, etc. so you have a common Linux kernel shared across all OSes and some custom software that differentiate operating systems from each other.

![Document](../Images/doc2.png)

We said earlier that Docker containers share the underlying kernel. So what does that actually mean?

Sharing the kernel.
Let's say we have a system with an ubuntu OS.

With Docker installed on it.

Docker can run any flavor of OS on top of it, as long as they are all based on the same kernel.

In this case, Linux.

If the underlying OS is ubuntu.

Docker can run a container based on another distribution like Debian, fedora, Susi or CentOS.

Each Docker container only has the additional software that we just talked about in the previous slide

that makes these operating systems different.

And Docker utilizes the underlying kernel of the Docker host which works with all OSS above.

So what is an OS that do not share the same kernel as this windows?

And so you won't be able to run a windows based container on a Docker host with Linux on it.

For that you will require a Docker on a windows server.
Now it is when I say this that most of my students go, hey, hold on there.

That's not true.

And they install Docker on windows, run a container based on Linux and go see it's possible.

Well, when you install Docker on Windows and run a Linux container on windows, you're not really running

a Linux container on windows.

Windows runs a Linux container on a Linux virtual machine under the hood.

So it's really Linux container on Linux, virtual machine on Windows.

We discussed more about this on the Docker on Windows or Mac later during this course.

Now you might ask, isn't that a disadvantage then not being able to run another kernel on the OS?

The answer is no, because unlike hypervisors, Docker is not meant to virtualize and run different

operating systems and kernels on the same hardware.

## The main purpose of Docker is to package and containerize Various applications and to ship them and

to run them anywhere, anytime, as many times as you want.

So that brings us to the differences between virtual machines and containers, something that we tend

to do, especially those from a virtualization background.

![Document](../Images/doc3.png)


So that brings us to the differences between virtual machines and containers, something that we tend

to do, especially those from a virtualization background.
As you can see on the right, in case of Docker, we have the underlying hardware infrastructure and

then the OS and then Docker installed on the OS.

Docker then manages the containers that run with libraries and dependencies alone.

In case of virtual machines, we have the hypervisor like ESX on the hardware and then the virtual machines

on them.

As you can see, each virtual machine has its own OS inside it, and then the dependencies and then

the application.

The overhead causes higher utilization of underlying resources, as there are multiple virtual operating

systems and kernels, running the virtual machines also consume higher disk space, as each VM is heavy

and is usually in gigabytes in size, whereas Docker containers are lightweight and are usually in megabytes

in size.

This allows Docker containers to boot up faster, usually in a matter of seconds, whereas VMs, as

we know, takes minutes to boot up as it needs to boot up the entire operating system.

It is also important to note that Docker has less isolation as more resources are shared between the

containers, like the kernel, whereas VMs have complete isolation from each other since VMs don't rely

on the underlying OS or kernel.


You can run different types of applications built on different OSes, such as Linux based or windows

based apps on the same hypervisor.

So those are some differences between the two.

Now, having said that, it's not an either container or virtual machine situation.

It's containers and virtual machines.
It's containers and virtual machines.

Now when you have large environments with thousands of application containers running on thousands of

Docker hosts, you will often see containers provisioned on virtual Docker hosts.

That way, we can utilize the advantages of both technologies.

We can use the benefits of virtualization to easily provision or decommission Docker hosts as required.

At the same time, make use of the benefits of Docker to easily provision applications and quickly scale

them as required.

But remember that in this case, we will not be provisioning that many virtual machines as we used to

before, because earlier we provisioned a virtual machine for each application.

Now you might provision a virtual machine for hundreds or thousands of containers

![Document](../Images/doc4.png)

So how is it done?

There are lots of containerized versions of applications readily available as of today.

So most organizations have their products containerized and available in a public Docker repository

called Docker Hub or Docker Store.

For example, you can find images of most common operating systems, Databases and other services and

tools.

Once you identify the images you need and you install Docker on your host, bringing up an application

is as easy as running a docker run command with the name of the image.

In this case, running a docker run ansible command will run an instance of Ansible on the Docker host.

Similarly, run an instance of MongoDB, Redis, and Node.js using the docker run command.

If you need to run multiple instances of the web service, simply add as many instances as you need

and configure a load balancer of some kind in the front.

In case one of the instances were to fail, simply destroy that instance and launch a new one.

There are other solutions available for handling such cases that we will look at later during this course,

and for now, don't focus too much on the commands.

We will get to that in a bit.
![Document](../Images/doc5.png)


# We've been talking about images and containers.
Let's understand the difference between the two An image is a package or a template, just like a VM

template that you might have worked with in the virtualization world.

It is used to create one or more containers.

# Containers are running instances of images that are isolated and have their own environments and set of processes.

As we have seen before, a lot of products have been dockerized already.

In case you cannot find what you're looking for, you could create your own image and push it to Docker

Hub repository, making it available for public.

So if you look at it traditionally, developers developed applications.

![Document](../Images/doc6.png)
Then they hand it over to ops team to deploy and manage it in production environments.

They do that by providing a set of instructions, such as information about how the host must be set

up, what prerequisites are to be installed on the host, and how the dependencies are to be configured,

etc. since the ops team did not really develop the application on their own, they struggled with setting

it up when they hit an issue.

They work with the developers to resolve it.

With Docker, the developers and operations teams work hand in hand to transform the guide into a Docker

file with both of their requirements.

This Docker file is then used to create an image for their applications.

This image can now run on any host with Docker installed on it, and is guaranteed to run the same way

everywhere, so the ops team can now simply use the image to deploy the application.

Since the image was already working when the developer built it, and operations are have not modified

it, it continues to work the same way when deployed in production.
-----------------------
# SlideNo. 2
So we learned about containers and we now have our application packaged into a Docker container.

But what's next?
![Document](../Images/doc8.png)

How do you run it in production?

What if your application relies on other containers, such as databases or messaging services or other

backend services?

What if the number of users increase and you need to scale your application?

How do you scale down when the load decreases?

To enable these functionalities, you need an underlying platform with a set of resources and capabilities.

The platform needs to orchestrate the connectivity between the containers and automatically scale up

or down based on the load.

This whole process of automatically deploying and managing containers is known as container orchestration.

![Document](../Images/doc7.png)

Kubernetes is just a container orchestration technology.

There are multiple such technologies available today.

Docker has its own tool called Docker Swarm Kubernetes from Google and Mesos from Apache.

While Docker Swarm is really easy to setup and get started, it lacks some of the advanced features

required for complex applications.

Mesos. On the other hand, is quite difficult to setup and get started, but supports many advanced features.

# Kubernetes, arguably the most popular of it all, is a bit difficult to setup and get started, but

provides a lot of options to customize deployments and supports deployment of complex architectures.

Kubernetes is now supported on all public cloud service providers like GCP, Azure, and AWS, and the

Kubernetes project is one of the top ranked projects in GitHub.

# There are various advantages of container orchestration.

Your application is now highly available, as hardware failures do not bring your application down because

you have multiple instances of your application running on different nodes.

The user traffic is load balanced across the various containers.

When demand increases, deploy more instances of the application seamlessly and within a matter of seconds.

And we have the ability to do that at a service level when we run out of hardware resources.

Scale the number of underlying nodes up or down without having to take down the application, and do

all of these easily with a set of declarative object configuration files.
![Document](../Images/doc9.png)
And that is Kubernetes.

And that is Kubernetes.
![Document](../Images/doc10.png)

It is a container orchestration technology used to orchestrate the deployment and management of hundreds

and thousands of containers in a clustered environment.

------------------
# Slide 4  Architecture

This is to make sense of the terms that we will come across while setting up a Kubernetes cluster.

# Let us start with nodes.
![Document](../Images/doc11.png)
# A node is a machine, physical or virtual, on which Kubernetes is installed.
# A node is a worker machine and that is where containers will be launched by Kubernetes.
It was also known as minions in the past.

So you might hear these terms used interchangeably.

But what if the node on which your application is running fails?

Well, obviously our application goes down, so you need to have more than one nodes.

# A cluster is a set of nodes grouped together.
![Document](../Images/doc12.png)
This way, even if one node fails, you have your application still accessible from the other nodes.

Moreover, having multiple nodes helps in sharing load as well.

Now we have a cluster.

# But who is responsible for managing the cluster?

# Where is the information about the members of the cluster stored?

# How are the nodes monitored?

# When a node fails, how do you move the workload of the failed node to another worker node?

# That's where the master comes in.
![Document](../Images/doc13.png)
**The master is another node with Kubernetes installed in it and is configured as a master.

The master watches over the nodes in the cluster and is responsible for the actual orchestration of

containers on the worker nodes.**


**When you install Kubernetes on a system, you're actually installing the following components an API

server and etcd service, a Kubernetes service, a container, runtime controllers and schedulers.
**
![Document](../Images/doc13.png)
# The API server acts as the front end for Kubernetes. The user's management devices, command line interfaces all talk to the API server to interact with the Kubernetes cluster.

**Next is the etcd keystore.
![Document](../Images/doc15.png)
Etcd is a distributed, reliable key value store used by Kubernetes to store all data used to manage

the cluster.

Think of it this way when you have multiple nodes and multiple masters in your cluster, etcd stores

all that information on all the nodes in the cluster in a distributed manner.

Etcd is responsible for implementing locks within the cluster to ensure that there are no conflicts

between the masters,
**
![Document](../Images/doc16.png)
**the scheduler is responsible for distributing work or containers across multiple nodes.It looks for newly created containers and assigns them to nodes.
**

**The controllers are the brain behind orchestration.

They're responsible for noticing and responding when nodes, containers, or endpoints goes down, the

controllers make decisions to bring up new containers.

In such cases, the container runtime is the underlying software that is used to run containers.

In our case, it happens to be Docker, but there are other options as well.**

**And finally, Kubelet is the agent that runs on each node in the cluster.

The agent is responsible for making sure that the containers are running on the nodes as expected.**


# So far we saw two types of servers master and worker, and a set of components that make up Kubernetes.

But how are these components distributed across different types of servers?

 # In other words, how does one server become a master and the other the slave?

The worker node, or minion as it is also known, is where the containers are hosted. For example, Docker containers.

And to run Docker containers on a system, we need container runtime installed. And that's where the container runtime falls.

In this case it happens to be Docker.

This doesn't have to be Docker.

There are other container runtime alternatives available, such as Rocket or Cryo.

But throughout this course we are going to use Docker as our container runtime engine.
**The master server has the kube API server and that is what makes it a master.

Similarly, the worker nodes have the Kubelet agent that is responsible for interacting with the master

to provide health information of the worker node and carry out actions requested by the master on the

worker nodes.

All the information gathered are stored in a key value store on the master.

The key value store is based on the popular etcd framework.**

**The master also has the control manager and the scheduler.

There are other components as well, but we will stop there for now.

The reason we went through this is to understand what components constitute the master and worker nodes.

This will help us install and configure the right components on different systems.**

![Document](../Images/doc19.png)

When we set up our infrastructure and finally, we also need to learn a little bit about one of the

command line utilities known as the cube command line tool or cube CTL or cube control, as 

# it is also called the cube control tool, is used to deploy and manage applications on a Kubernetes cluster toget cluster information, to get the status of other nodes in the cluster, and to manage many other things.

# The cube CTL run command is used to deploy an application on the cluster.

# The cube CTL cluster info command is used to view information about the cluster and 
# the cube CTL get nodes command is used to list all the nodes part of the cluster.

That's all we need to know for now and we will keep learning more commands throughout this course.

We will explore more commands with cube CTL when we learn the associated concepts.


-------------------------------------------

# Slide=8 Docker Vs Containerd
So you're going to come across Docker and container D many times going forward.

So when you read older blogs or documentation pages, you'll see Docker mentioned along with Kubernetes.

And when you read newer blogs you will see container D, and you'll wonder what the difference is between

the two.
And there are a few CLI tools like Ktor, CRI control or Node Control.

And you'll wonder what are these CLI tools and which one should you be using?

So that's what I'm going to explain in this video.

So that's what I'm going to explain in this video.

So let's go back in time to the beginning of the container era.

And in the beginning there was just Docker and there were other tools like rocket.

**But Docker's user experience made working with containers super simple, and hence Docker became the

most dominant container tool. And then came Kubernetes to orchestrate Docker.

So Kubernetes was built to orchestrate Docker specifically in the beginning.**

So Docker and Kubernetes were tightly coupled and back then Kubernetes only worked with Docker and didn't

support any other container solutions.

And then Kubernetes grew in popularity as a container orchestrator.

And now other container runtimes like rocket wanted in Kubernetes.

Users needed it to work with container runtimes that are other than just Docker.

**And so Kubernetes introduced an interface called Container Runtime Interface or CRE.
**

# So CRE allowed any vendor to work as a container runtime for Kubernetes as long as they adhere to the OCI standards.

# So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

Image spec means the specifications on how an image should be built.

So that's what it defined.

# An image spec defined the specifications on how an image should be built, and 
# the runtime spec defined the standards on how any container runtime should be developed.

# So keeping these standards in mind, Anyone can build a container runtime that can be used by anybody to work with Kubernetes.

So rocket and other container runtimes that adhere to the OCI standards were now supported as container

runtimes for Kubernetes via the CRI.

However, Docker wasn't built to support the CRI standards because remember, Docker was built way before

CRI was introduced and Docker still was the dominant container tool used by most.

Kubernetes had to continue to support Docker as well.

And so Kubernetes introduced what is known as Docker shim, which was a hacky but temporary way to continue

to support Docker outside of the container runtime interface.

While most other container runtimes worked through the CRI, Docker continued to work without it.

Now you see Docker isn't just a container runtime alone.

Docker consists of multiple tools that are put together, for example, the Docker CLI, the Docker

API, the build tools that help in building images.

There was support for volumes of security.

And finally also the container runtime called Runcie, the daemon that managed Runcie.

And that's that was called as container D.

So container D is CLI compatible and can work directly with Kubernetes as all other runtimes.

So container D can be used as a runtime on its own separate from Docker.

So now you have container D as a separate runtime and Docker separately.

So Kubernetes continued to maintain support for Docker Engine directly.

However, having to maintain the Docker shim was an unnecessary effort and added complications, so

it was decided in version 1.24 release of Kubernetes to remove Dockershim completely, and so support

for Docker was removed.

But you see all the images that were built before Docker was removed.

But you see all the images that were built before Docker was removed.

So all the Docker images continue to work because Docker followed the image spec from the OCI standard.

So all the images built by Docker follow the standard.

So they continue to work with Containerd.

But Docker itself was removed as a supported runtime from Kubernetes.

So that's the whole story.
![Document](../Images/doc21.png)

And now let's look into container D more specifically.

So container D although is part of Docker, is a separate project on its own now and is a member of

CNCF with the graduated status.

So you can now install container D on its own without having to install Docker itself.

So if you don't really need Docker's other features, you could ideally just install container D alone.

So typically we ran containers using the docker run command when we had Docker.

And if Docker isn't installed then how do you run containers with just To container D.

Now once you install container D, it comes with a command line tool called Ktor.


And this tool is solely made for debugging container D and is not very user friendly as it only supports

a limited set of features.

And this is what you can see in the documentation pages for this particular tool.

So for the other than the limited set of features that it provides, anything any other way that you

want to interact with container D, you'll have to rely on making API calls directly, which is not

the the most user friendly way for us to operate.

So just to give you an idea, this can be the Ktor command can be used to perform basic container related

activities such as pull images.

For example, to pull uh, redis image, you will run the ktor images pull command followed by the address

of the image.

And to run a container we use the CTL run command and specify the image address.

But as I mentioned, this tool is solely made for debugging container D and is not very user friendly

and not to be used for running or managing containers on a production environment, so a better alternative

![Document](../Images/doc22.png)

alternative

recommended is the nerd control tool or nerd CTL tool.

So the nerd control tool is a command line tool that's very similar to Docker.

So it's like Docker like CLI for container D.

It supports all or most of the options that Docker supports.

And apart from that it has the added benefit that it can give us access to the newest features implemented

into container D.

For example, we can work with the encrypted container images or other new feature that will eventually

be implemented into the Docker commands in the future.

It also supports lazy pulling of images, P2P image distribution, image signing and verifying and namespaces

in Kubernetes, which is not available in Docker.

So the nerd control tool works very similar to Docker CLI.

So instead of Docker, you would ideally simply have to replace it with node control.
![Document](../Images/doc23.png)
So you can run almost all Docker commands that interact with containers like this.

So some examples are instead of running the docker run command to create a container to run a container,

you could just use the inert control run command.

And similarly, let's say you want to use some options for port mappings or exposing ports with the

Dash P option for the docker run command, you could do the same with node control.

Simply replace Docker with node control.

So that's pretty easy and straightforward.
![Document](../Images/doc24.png)

So now that we have talked about CTR and the node control tool, it's important to talk about another

command line utility known as CRI, CTL or CRI control.

So earlier we talked about the container Runtime interface or CRI which is a single interface used to

connect CRI compatible container runtimes the container, the rocket and others.
![Document](../Images/doc25.png)
The CRI control is a command line utility that is used to interact with the CRI compatible container

runtime.

So this is kind of an interaction from the Kubernetes perspective.

So this tool is maintained by developed and maintained by the Kubernetes community.

And this is this tool works across all the different container runtimes as opposed to earlier, you

had the Ctor and the node control.
Tool that were built by the container community specifically for container D.

This particular tool is from the Kubernetes perspective that works across.

Different container runtimes.

So it must be installed separately.

And it is used to.

Inspect and debug container runtime.

So this again is not ideally used to create containers.

Unlike Docker or the node control utility this is again a debugging tool.

You can technically create containers with the CRI control utility, but it's not easy.

It's only to be used for some special debugging purposes.
 
Remember that it works along with the Kubelet, so we know that the Kubelet is responsible for ensuring

that the specific number of containers or pods are available on on node at a time.

**So if you go through the CRI control utility and try and create containers with it, then eventually

Kubelet is going to delete them because the Kubelet is unaware of some of those containers or pods that

are created outside of its knowledge.

So anything that it sees is going to go and delete it.

So because of those things, remember that the cry control utility is only used for debugging purposes

and getting into containers and all of that.
**
So let's look at some of the command line example

So you simply run the right control CRE CTL command for this.

And this can be used to perform basic container related activities such as pull images or list existing

images.

List containers very similar to the docker command where you use the PS command in docker.

You will run the PS command.

Here you would run the CRI control PS command and to run a command inside a container in Docker.

Remember we use the exact command and it's the same here along with the same options such as the dash,

I and T, and then you specify the container id and then the command that needs to be run to view the

logs.

Again you use the CRI control logs command very similar to Docker command.

And one major difference is that the CRI cry.

Control command is also aware of pods, so you can list pods by running the control pods command.

So this wasn't something that Docker was aware of.

So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers

and view logs, especially on the worker nodes.
![Document](../Images/doc26.png)

Now you're going to use the cry control command to do so.

The syntax is a lot similar.

So it shouldn't be shouldn't be really hard.

So here's a chart that lists the comparison between Docker and the cry control command line tool.

So as you can see, a lot of commands such as attach exec images, info, inspect logs, PS stats,

version, etc. work exactly the same way and some of the commands to create, remove and start and stop

images works similarly too.
![Document](../Images/doc27.png)

So a full list of differences can be found in the link given below.

Since, as I mentioned, cry control can be used to connect to any cry compatible runtime.

Remember to set the right endpoint if you have multiple container runtimes configured, or if you want

CRI control to interact with the specific runtime.

For example, if you haven't configured anything by default, it's going to connect to these sockets

in this particular order.

So it's going to try and connect to Dockershim first and then Containerd and then Cri-o.

And then you have the cri docker db.

That's the order that it follows.

But if you want to override that and set a specific endpoint, you use the runtime endpoint option with

the CRI control command line.

Or you could use the container runtime endpoint environment variable.

Set the environment variable to the right endpoint.

So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd,

which is used for debugging purposes only and has a very limited set of features.


# Summarizing
![Document](../Images/doc28.png)
**ctr command line utility that comes with Containerd and works with Containerd,

which is used for debugging purposes only and has a very limited set of features.

So ideally you wouldn't be using this at all.

So you can ignore this.
**
**Then we have nerdctl**

**Then we have the nerd control CLI, which is again from the Containerd community.

But this is a docker like CLI for container D, used for general purpose to create containers and supports

the same or more features than docker CLI.

So this is something that I think we'll be using a lot more going forward.
**
# we hvae crictl

**And then we have the CRI control utility which is from the Kubernetes community, the mainly used to

interact with CRI compatible runtime.

So it's not just for container D.

This can be used for all CRI supported runtimes.

Again this is mainly for to be used for debugging purposes.
**
![Document](../Images/doc29.png)
So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging

purposes, whereas the control is used for general purpose.

The CTR and control are from the container the community and works with container D, whereas CRI control

is from the Kubernetes community and works across all CRI compatible runtimes.

So our labs originally had Docker installed on all the nodes.

So we used the Docker commands to troubleshoot.

But now it's all containerd.

So remember to use the the CRI control command instead to troubleshoot.

------------------------------
# Slide Docker Deprecation

Every time we mention about Docker in this course, one of the common questions we get is why are we

still talking about Docker if it's deprecated?

And I realized that there's some confusion about the Docker deprecation among students, and I just

wanted to take a minute to try and help clear that confusion.

So as we discussed before, Docker was the original and only supported container runtime for Kubernetes,

and to make Kubernetes open to other runtimes, we had the container runtime interface introduced.

So Docker consisted of multiple tools put together like Docker CLI, the API, the build tools that

help build images.
![Document](../Images/doc30.png)

There was support for volumes, auth, security and finally also the container runtime called Runc and

the daemon that managed the runtime called the container.

So container D is the CLI compatible and can and that's the component that can work directly with Kubernetes.

And as all of the other runtimes.

So container D can be used as a runtime on its own separate from Docker.

So once this change was made, Kubernetes no longer needed.

The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they

were all taken care of of by Kubernetes itself.

And so Kubernetes was able to deprecate the support for Docker.

Now that doesn't mean that Docker is entirely gone.

So Docker is still the most popular container solution out there and used by many in their day to day

development and build processes.

It's just that Kubernetes no longer required Docker as the runtime now.

So going forward in this course, every time we talk about containers, we use Docker as an example.

And that's absolutely fine because sometimes we learn how things work in containers first before looking

at how it is done in container orchestration world of Kubernetes.
![Document](../Images/doc31.png)
So and in those cases it is okay to use Docker as an example.

And if you don't happen to have Docker on your machine or are only using container D, then you can

still work with the same examples by replacing the docker command with the node control command, or

most of the time.

So I just wanted to throw that out there before we proceed.
# Quiz
![Document](../Images/doc32.png)
![Document](../Images/doc33.png)
![Document](../Images/doc34.png)
![Document](../Images/doc35.png)
![Document](../Images/doc36.png)
![Document](../Images/doc37.png)
![Document](../Images/doc38.png)
![Document](../Images/doc39.png)
