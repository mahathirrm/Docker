# Docker Learning – Day 1 (Detailed Notes)

## Date
01-Feb-2026

---

## Introduction
This repository documents my **Docker learning journey** as part of my DevOps preparation.
This README covers **Day 1 learning**, focusing on Docker fundamentals, core concepts, and commands learned.
Hands-on depth will increase gradually in upcoming days.

---

## What is Docker?
Docker is a **containerization platform** that allows applications to run in isolated environments called **containers**.

Each container packages:
- Application code
- Required libraries
- Dependencies

This ensures applications behave consistently across different systems.

---

## Problems Without Docker
When Docker is not used, testing applications across different operating systems such as:
- Ubuntu
- RHEL
- Windows

requires **separate virtual machines or EC2 instances**.

### Challenges faced:
- Dependency conflicts (example: multiple Java versions)
- High CPU and memory consumption
- Increased storage usage
- Longer VM boot time
- Difficult application portability

---

## Why Docker?
Docker solves these problems using **OS-level virtualization**.

### Key benefits:
- Application isolation
- No dependency conflicts
- Efficient CPU and memory usage
- Faster startup compared to virtual machines
- Easy portability across environments

---

## Containers Explained
- A **container** is an isolated runtime environment
- Each container has its own libraries and dependencies
- Containers share the **host operating system kernel**
- Containers start much faster than virtual machines

---

## Kernel Sharing Concept
Docker uses **kernel sharing**, meaning:
- Linux containers share the Linux kernel
- Different Linux distributions (Ubuntu, RHEL, CentOS) can run on the same kernel
- Windows containers cannot run directly on Linux kernel because Windows uses a different kernel (NT)

This design:
- Reduces overhead
- Improves performance
- Saves system resources

---

## Docker Architecture (High-Level)
1. Physical Hardware
2. Host Operating System (Linux Kernel)
3. Docker Engine
4. Containers (Applications + Dependencies)

---

## Docker Components
- **Dockerfile** – Instructions to build an image
- **Docker Image** – Read-only template
- **Docker Container** – Running instance of an image
- **Docker Hub** – Public image registry

---

## Docker Commands Learned

### Image Commands
```bash
docker images
docker pull httpd
docker rmi <image-name>
docker inspect <image-id>
```

**Notes:**
- If no tag is specified, Docker pulls the `latest` image by default
- `docker inspect` provides metadata about images

---

### Container Lifecycle Commands
```bash
docker ps
docker ps -a
docker run -itd -p 9123:80 httpd
docker stop <container-id>
docker rm <container-id>
docker rm -f <container-id>
```

**Port Mapping Format:**
```
host_port : container_port
```

---

### Container Access & Inspection
```bash
docker exec -it <container-id> /bin/bash
cat /etc/os-release
docker top <container-id>
docker stats
docker inspect <container-id>
```

**Purpose:**
- Check running processes
- View OS details
- Monitor CPU and memory usage
- Inspect container configuration

---

## Notes
- Running Jenkins inside Docker helps avoid manual dependency installation
- Pulling Jenkins image from Docker Hub simplifies setup

---

## Task (Planned)
- Modify `index.html` inside a running container
- Verify changes via browser
- Practice additional container operations

---

## Learning Outcome – Day 1
- Understood Docker fundamentals
- Learned why Docker is required
- Understood container and kernel concepts
- Learned essential Docker image and container commands

---

## Next Steps
- Docker installation verification
- Hands-on container customization
- Dockerfile creation
- Volume and network practice

---


