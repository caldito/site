---
title: Selfhosting and platform engineering
date: '2024-05-14'
categories:
draft: true
tags:
slug: self-hosting-and-platform-engineering
---

## What is self-hosting and why to do it
Self-hosting is running your own services for personal use.


Why:
- Your data is yours
- It's a fun hobby if you are a nerd
- Learn about service operations or improving your skills


Example services:
- Photos (Immich)
- Files (Owncloud/nextcloud/synchthing)
- A fully legal (wink) replacement for video subscription services
- Notes
- Maps
- Books
- Calendar
- Contacts
- Mail
- Bookmarks
- LLM chatbot



For these things you can either use the cloud or build a homelab. I advocate for a homelab if it's for personal use because in that way you truly own the infrastructure and also it's cheaper in the long run.

There are some use cases where selfhosting is not the ideal solution. The main ones that comes to mind are those who require huge amounts of compute. Like doing some serious password cracking or training/finetunning LLMs.


## Things you need for a basic yet reliable homelab
You don't need anything super crazy to get going. But it's better to do it right because these are services you will depend on it.


### Hardware
- Somewhere to run apps: Depending on your scope you can got from an old repurposed laptop with Linux installed to a full fledge hypervisor like Proxmox.
- Somewhere to store data reliably: the obvious choice is to get a NAS. But they come in various shape and forms. The basic question is if you want something prebuilt or to bulid one yourself.
- Appropiate networking gear

### Supporting services and practices
The services providing featurq e to the end user are the main goal. But for having a good uptime and a good time operating them you need some supporting services:
- CI/CD
- Monitoring
- Networking
- Security: auth and not exposing to the exterior
- Backups (3-2-1)

## Actions you need to do to operate a homelab
- Deploy infra and services
- Monitor infra and services
- Upgrade infra and services

It's a ton of work. And if you are serious is unmanageable to do it in a non-automated way

Automation can help. So called DevOps tools.

## Automation and Platform Engineering

### Stages of automation

I would say automation is a must. If you don't automate you won't have a good time.
1. Manual operation
2. Scripting
3. Scripts run upon with changes and a schedule by CI/CD
4. Standardized process for all operations: Platform Engineering

### Automation tools
Packer: create VM templates
Terraform: provision infra from VM templates
Ansible: deploy and config services in that infra. Playbook and roles

### Implementing Platform Engineering
- Standard way for deploying infra: Just having one or two packer templates and deploying them with terraform
- Standard way for deploying services and setting up their monitoring: Using ansible and deploying services in an stardardized way with an ansible role.
- Having runbooks for upgrades: having a guide on how to upgrade services and infra in a safe way.
    - Backup. VM snapshots and dataset snapshots.
    - Upgrade. Rolling out a new version of the service
    - Test. 
    - How to rollback if necessary. Restoring the snapshot and deploying back the previous version

Bear in mind that is okay if not everything is 100% automated or standardized. It's an iterative process. You will have to prioritize what to take on.




## Demo and showing around


Show around dashy, proxmox and truenas.

Show ansible playbooks and roles.

Show golden paths.

Deploy a new service in an existing machine with a commit
