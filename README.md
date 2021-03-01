==> This is a System Administration and Networking project.
=======
> :warning: **Warning**: Don't copy/paste code you don't understand: it's bad for you, and for the school. I have put my login in a lot of files to encourage you doing your own version. Have fun !
========
=> Kubernetes is an orchestration layer that allows users to more effectively run workloads using containers — from keeping long-running services ‘always on’ to more efficiently managing intensive shorter-term tasks like builds.

=> Kubernetes is software that manages many server computers and runs a large number of programs across those computers. On Kubernetes, all programs run in containers so that they can be isolated from each other, and be easy to develop and deploy.

==> Kubernetes is like “Let’s say an application environment is your old-school lunchbox. The contents of the lunchbox were all assembled well before putting them into the lunchbox [but] there was no isolation between any of those contents. The Kubernetes system provides a lunchbox that allows for just-in-time expansion of the contents (scaling) and full isolation between every unique item in the lunchbox and the ability to remove any item without affecting any of the other contents (immutability).”

=> What is a Kubernetes cluster?
You can begin to understand this major piece literally: A cluster is a group or bunch of nodes that run your containerized applications. You manage the cluster and everything it includes – in other words, you manage your application(s) – with Kubernetes.

==> What is a Kubernetes pod?
This is essentially the smallest deployable unit of the Kubernetes ecosystem; more accurately, it’s the smallest object. A pod specifically represents a group of one or more containers running together on your cluster.

==> What is a Kubernetes node?
Nodes are comprised of physical or virtual machines on your cluster; these “worker” machines have everything necessary to run your application containers, including the container runtime and other critical services. (The Kubernetes Github repository has a good, detailed breakdown of the Kubernetes node.)

==> What is kubectl?
Simply put, kubectl is a command line interface (CLI) for managing operations on your Kubernetes clusters. It does so by communicating with the Kubernetes API. (It’s not a typo - the official Kubernetes style is to lowercase the k in kubectl.) It follows a standard syntax for running commands: kubectl [command] [TYPE] [NAME] [flags]. You can find an in-depth explanation of kubectl here, as well as examples of common operations, but here’s a basic example of an operation: “run.” This command runs a particular container image on your cluster.

==> What is a Kubernetes service?
A Kubernetes service is "an abstract way to expose an application running on a set of pods as a network service," as the Kubernetes documentation puts it. "Kubernetes gives pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them."

But pods sometimes have a short lifespan. As pods come and go, services help the other pods "find out and keep track of which IP address to connect to." 

==> What is Minikube?
Minikube is an open source tool that enables you to run Kubernetes on your laptop or other local machine. It can work with Linux, Mac, and Windows operating systems. It runs a single-node cluster inside a virtual machine on your local machine.

==> MetalLB is a Loadbalancer implementation for bare metal Kubernetes clusters, based on standard routing protocols.
