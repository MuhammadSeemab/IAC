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
