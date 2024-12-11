---
title: (Workshop) Reclaiming privacy in the web with Whonix in KVM
date: '2024-12-11'
categories:
draft: false
tags:
slug: reclaiming-privacy-whonix-kvm
---

# Resources
- [Notes for following the workshop](https://github.com/caldito/whonix-kvm-workshop)
- [Slides](/docs/reclaiming-privacy-whonix-kvm-slides.pdf)

# Notes:
Disclaimer: this is just a quick outline I used for presenting and may contain errors

### 1. Introduction
### 2. Virtualization Platforms: Hypervisors and emulators
**Hypervisors: hardware virtualization**
Virtualize only the Operating system on top of the original hardware
- Type
- FOSS or not

**Emulators**
Virtualize the hardware architecture.
- QEMU quick emulator. Open source and 7 different architectures
- Useful for gaming and virtualising legacy hardware
- Rosetta: very relevant in apple devices with ARM architecture. M1, M2, M3, M4

### 3. QEMU and KVM
Free and open source virtualization platform
KVM -> manages CPU, memory and disk
Qemu -> Emulates hardware devices: display, network interfaces, peripherals...
QEMU/KVM
### 4. Privacy OSs
- tails: amnesic operating system
- whonix: is the one
- QubesOS

### 5. Whonix
- OSS
- Sweet network isolation and ease to use.
- Different setups: VBox, KVM, qubesos

### 6. Tor Network

Logo is an onion because the traffic is encrypted in layers.
No intermediate node knows:
- the client
- the server
Not only Privacyfocused Operating Systems but also the tor browser is enough 

### 7. Hands-on: Installing Whonix on QEMU/KVM
Detailed on the readme and slides