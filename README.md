# Docker Learning – Theory Notes

**Learner:** Mahathir Mohamed  
**Source:** Personal study notes (Docker Day 1, Day 2, Day 3 – theory)

---

## What is Docker?
Docker is a containerization platform that allows applications to be packaged and run in isolated environments called **containers**.

Docker packages:
- Application code
- Libraries
- Dependencies
- Runtime

This ensures consistency across development, testing, and production environments.

---

## Why Docker is Required
Before Docker, applications were deployed directly on servers or virtual machines.

### Problems without Docker:
- Dependency conflicts (example: different Java versions)
- Multiple applications competing for system resources
- Higher CPU, memory, and storage consumption
- Slow VM boot time
- Difficult application portability

Docker solves these problems using **OS-level virtualization**.

---

## Containers
A container is a lightweight, isolated environment that includes everything required to run an application.

### Container characteristics:
- Has its own libraries and dependencies
- Shares the host operating system kernel
- Starts faster than virtual machines
- Uses fewer system resources

---

## Kernel Sharing Concept
Docker uses **kernel sharing** instead of hardware virtualization.

### Linux Containers:
- Share the Linux kernel
- Can run different Linux distributions (Ubuntu, RHEL, CentOS) on the same kernel

### Windows Containers:
- Use Windows NT kernel
- Cannot run directly on Linux kernel

Kernel sharing improves:
- Performance
- Resource utilization
- Startup time

---

## Docker Architecture (High-Level)
Docker follows a **client-server architecture**:

1. Docker Client
2. Docker Daemon
3. Docker Registry
4. Docker Images
5. Docker Containers

---

## Docker Components

### Dockerfile
A Dockerfile is a text file containing instructions to build a Docker image.

### Docker Image
- A read-only template
- Used to create containers
- Can have multiple versions using tags

### Docker Container
- A running instance of a Docker image
- Ephemeral by default

### Docker Registry
- Stores Docker images
- Example: Docker Hub

---

## Docker Repository
A Docker repository is a collection of related Docker images that share the same name and use tags to represent different versions.

---

## Docker Image Tags
- Tags identify image versions
- If no tag is specified, Docker uses `latest` by default

---

## Container Lifecycle (Concept)
- Create
- Start
- Pause
- Stop
- Delete

Containers release CPU and memory after stopping.

---

## Image Lifecycle (Concept)
- Build or pull image
- Tag image
- Push image to registry
- Remove image when not required

---

## Docker Volumes (Theory)

Containers are **ephemeral**, meaning data inside a container is lost when the container is removed.

### Solution: Volumes

Types of mounts:
1. **Bind Mount**
2. **Docker Volume**
3. **tmpfs Mount**

---

### Bind Mount
- Maps a host directory to a container directory
- Data is visible on the host
- Best practice path on Linux: `/opt`
- Persistent storage

---

### Docker Volume
- Managed by Docker
- Stored under `/var/lib/docker/volumes`
- Persistent storage
- Host path is abstracted

---

### tmpfs Mount
- Stored in memory
- Not persistent
- Data is removed when container stops
- Used for sensitive or temporary data

---

## Dockerfile Instructions (Theory)

### FROM
Defines the base image.

### RUN
Executes commands during image build.

### COPY
Copies files from host to image.

### ADD
Similar to COPY but supports remote URLs and auto-extraction.

### WORKDIR
Sets the working directory.

### LABEL
Adds metadata to the image.

### EXPOSE
Documents which port the container listens on.

### ENV
Defines environment variables.

### ARG
Defines build-time variables.

### USER
Specifies the user to run the container.

---

## ENTRYPOINT vs CMD

### ENTRYPOINT
- Defines the main executable
- Cannot be overridden easily

### CMD
- Provides default arguments
- Can be overridden at runtime

Both can be used together for flexibility.

---

## Multistage Docker Build (Concept)
Multistage builds allow:
- Separating build and runtime stages
- Reducing final image size
- Improving security

---

## Docker Networking (Theory)

### Default Bridge Network
- Default network for containers
- Provides basic isolation

### Custom Bridge Network
- User-defined network
- Better DNS resolution between containers

### Host Network
- Container shares host network stack
- No port mapping required

### None Network
- No network connectivity

### Overlay Network
- Used in Docker Swarm
- Connects containers across hosts

---

## Docker Cleanup (Concept)
Docker provides cleanup mechanisms to:
- Remove stopped containers
- Remove unused images
- Free disk space

---

## Interview IQ Points (From Notes)
- Difference between VM and Container
- Why containers are faster than VMs
- ENTRYPOINT vs CMD
- Volume vs Bind Mount
- Linux kernel sharing
- Why Windows containers cannot run on Linux

---
