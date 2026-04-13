# HELM

Now, Kubernetes is awesome at managing complex infrastructures.

# A typical app is usually made up of a collection of objects that need to interconnect to make everything work.

For example, even a relatively simple WordPress site might need the following,

a deployment to deploy the pods that you wanna run,

such as MySQL database servers or web servers,

a persistent volume to store the database,

a persistent volume claim,

a service to expose the web server running in a pod to the internet,
a secret to store credentials like admin passwords and other things,

and maybe even more if you want extra stuff like periodic backups, jobs and so on.

# For every object, we might need a separate YAML file. Then we need to apply kubectl apply on every YAML file to get these objects created,

# and this can be a tedious task, but that's not the end of it.

Now imagine we download these YAML files from the internet and we are not happy with the default,

so we start changing stuff. The persistent volumes are 20 GB, but we know our website will need much more storage than that,

so we go to the YAML files where the PVs and PVCs are declared, and we change 20 to 100.

More stuff needs to be changed. Well, we'll have to open up every YAML file and edit each one according to our needs. And now, not bad enough yet,

imagine two months go by

and we now have to upgrade some components in our app,

and so we are back

to editing multiple YAML files' declarations again,

with great care

so that we don't change the wrong thing in the wrong place.

Now, sometime later, you wanna delete the app

and we'll need to remember each object

that belongs to our app and delete them all one by one.

Now you might be thinking, Hey, that's not a big deal.

We can just write all object declarations

in a single YAML file and be done with it.

Well, that's true,

but it might make it even harder to find stuff

when you're looking for,

say you wanna troubleshoot an issue,

we'd have to continuously search for stuff

that we need to edit in something

that could be 25 pages of text.

Now, at least in multiple files,

they'd be somewhat organized

and we'd know we'll find deployment related stuff

in the mydeployment.yaml file, for example.

# HELM 
Enter Helm, Helm changes the paradigm.

Kubernetes doesn't really care about our app as a whole.
All that it knows is that we declared various objects

and it proceeds to make each of them exist in our cluster.

It doesn't really know that this persistent volume

and that deployment and that secret

and that service are all part

of a big application called WordPress.

It looks at all the little pieces

that the administrator wanted to have in the cluster

and takes care of each one individually.

Helm, however, is built from ground up

to know about such stuff.

That's why it's sometimes called a package manager

for Kubernetes.

It looks at those objects

as part of a big package as a group,

and whenever we need to perform an action,

we don't tell Helm the objects that it should touch,

we just tell it what package we want to act on,

like our WordPress app package.

And based on the package name,

it then knows what objects it should change and how,

even if there are hundreds of objects

that belong to that particular package.

Now, to make this easier to understand, think about this,

a computer game is contained

in hundreds of thousands of files.

There are a few files with the program's executable code,

other files with audio, game sounds and music,

and other files with graphics, textures, images,

files with configuration data and so on.

Now, imagine we'd have to download each of them separately,

and that would be tedious.

Fortunately, we don't have to go through such horrors

as we get a game installer.

We run it, we choose the directory where we want to install,

we press the install button,

and then the installer does the rest,

putting thousands of files in their proper location.

# Helm does a similar thing and more for YAML files and the Kubernetes objects that make up our application.

We use a single command to install our entire app, even if it needs hundreds of objects,

Helm proceeds to automatically add every necessary object to Kubernetes without bothering us with the details.

We can customize the settings we want for our app or package by specifying desired values at installed time,

but instead of having to edit multiple values

in the multiple YAML files, we have a single location

where we can declare every custom setting.

In a file like values.yaml,

we can change the size of our persistent volumes,

choose the name of our WordPress website,

the admin password, settings for the database engine, and so on.

# We can upgrade our application with a single command. Helm will know what individual objects need to change to make this happen.

# Helm keeps track of all the changes made to the app files, and that allows us to roll back to the previous so-called revision.

# We use a single command to uninstall our app, and it keeps track of all the objects used by each app

# so it knows what to remove. We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.

**Helm does all the work.
**

# For now, understand that Helm works as a package manager with Install or Uninstall Wizard, and also as a release manager helping us upgrade or rollback applications.

# The most important thing is that it lets us treat our Kubernetes apps as apps instead of just a collection of objects, and this takes a huge burden off our shoulders

# as we don't have to micromanage each Kubernetes object anymore.

# Helm can do that for us.

![Document](../Images/cka1.PNG)


-----------------------------------------------------------------------
------------------------------------------------------------------
# Installation and Configuration 
And before installing Helm,

you must first have a **functional Kubernetes cluster** and **kubectl installed** and configured on your local computer with the right **login details set up the kubeconfig file** to work with the intended Kubernetes cluster.


System with Snap can install Helm using the **snap install helm command**.

**Use the classic option** to install a more relaxed sandbox that gives the app a bit more access to the whole system.So rather than strictly isolating it to its separate environment,

this way, Helm can easily access the kubeconfig file in your home directory so it knows how to connect to our Kubernetes cluster.

For **APT bases systems, such as the BN or Ubuntu**, follow the instructions to add key and sources list before installing Helm.

And for **PKG**, I'll run the pkg install helm command.
![Document](../Images/cka2.PNG)
Now, all this refer to the latest instructions from the documentation pages to install Helm for your version of operating system.

Well, that's all for now. Head over to the labs and practice working with installing Helm on our lab environment.
---------------------------------------------------------
--------------------------------------------
# Slide Quick Note on Helm2 and Helm3

# when Helm 3 was released compared to Helm 2. And when you browse through charts and blogs online, you may come across either of these versions. So, it is important to understand the differences between them.

Now, let's look at a brief history of Helm.

# Helm 1.0 was first released in February, 2016,

# Helm 2.0 in November, 2016, and Helm 3.0 in November, 2019.

# Now, since the initial launch in 2016,

# the project has matured, and it got better and better.

The improvements were also made possible by the fact

that Kubernetes itself was improving,

# so Helm had more tools at its disposal it could leverage right off of Kubernetes.

In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.

# Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.

So, let's take a look at the differences between them.

# Helm has a CLI client installed on your local machine that helps you perform Helm-specific actions against your Kubernetes cluster.

# When Helm 2 was around, Kubernetes lacked features

**1. such as role-based access control**

**2.  custom resource definitions.**

To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.

# So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.

# Tiller, in turn, communicated with Kubernetes and proceeded to take actions to make whatever you requested happen. So, Tiller was the middleman, so to speak. Besides the fact that an extra component sitting between you and Kubernetes adds complexity,there were also some security concerns.
![Document](../Images/helm2.PNG)
# By default, Tiller was running in God mode or otherwise said, it had the privileges to do anything that it wanted.

# This was good since it allowed it to make whatever changes necessary in your Kubernetes cluster to install your charts, but this was bad since it allowed any user with Tiller, access to do whatever they wanted in the cluster.

After cool stuff like role-based access control and custom resource definitions appeared in Kubernetes,

the need for Tiller decreased,

# so it was removed entirely in Helm 3. Now, there's nothing sitting between Helm and the cluster.
![Document](../Images/helm3.PNG)

Furthermore, with RBAC, security is much improved and any user can be limited in what they can do with Helm.

# And before, you had to set these limits in Tiller and that was not the best option,

# but with RBAC built from ground up to fine-tune user permissions in Kubernetes, it's now straightforward to do.






