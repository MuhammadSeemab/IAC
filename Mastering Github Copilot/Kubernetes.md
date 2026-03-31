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
![Logo](Images/doc1.png)
