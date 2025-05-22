# Terraform

The goal of this repository is to track the changes I make in my terraform file as I start to create a way to automatically launch my homelab through proxmox. 
This project is being started on May 5th 2025 and hopefully I will learn a lot about security and architecture.
The first goal of this project is to get a terraform file that will launch the infrastructure working on my laptop.
The second goal will be to setup my homelab and transfer the hosting onto my home server.
The third goal will be to setup a SOAR system and create some playbooks.
The fourth goal will be to test the SOAR system by red teaming my own infrastructure. At this point I might make some changes to the terraform script so that vulnerabilities are introduced. 
The fifth goal will be to start migrating things off of physical hardware and into the cloud, while keeping the infrastructure entirely launchable through the terraform script. 
The sixth goal will be to re-do the SOAR system to work with the cloud services
The seventh goal will be to re-penetration test the SOAR system with the cloud architecture. 

    PROGRESS DIARY:
    
GOAL 1

5/6/2025: Had to tear down and rebuild box because I made it too small. Got the terraform setup correctly I think. 
Have a problem with my laptop's hardware not being able to run a virtual box due to microsoft not allowing nested virtualization on surface laptops. I will have to work on other things until I am able to return home and work with my homelab next week. 

5/8/2025: Figured out I should use a wrapper script to launch all of my boxes using terraform, then use ansible to setup each box. Setup wrapper script and started planning architecture of the fake network.

5/16/2025: Returned from vacation and got some physical hardware including a dell pc and a router. Setup a PXE boot server with iVentoy to download proxmox onto the dell pc since I misplaced my usb. Also setup routing between my personal computer and my homelab workstation. The goal is to be able to fully manage the homelab from my personal computer through using ssh.