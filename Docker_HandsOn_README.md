# Docker Hands-on Practice – README

**Learner:** Mahathir Mohamed  
**Scope:** Docker Hands-on Practice Only  
**Note:** This document contains only practical work, commands executed, issues faced, and fixes.

---

## Day 3 – Containers, Images, Docker Hub

### Docker Service Verification
```bash
sudo systemctl status docker
```

---

### Pull Image
```bash
docker pull httpd
docker image ls
```

---

### Run Container with Port Mapping
```bash
docker run -itd -p 9128:80 httpd
```

**Issue:** Application not accessible via public IP  
**Fix:** Allowed port `9128` in AWS Security Group inbound rules

---

### Access Container
```bash
docker exec -it web_container /bin/bash
```

### Rename Container
```bash
docker rename old_container_name new_container_name
```

**Note:** Rename failed without underscore; succeeded after using underscore.

---

### Modify Application
- Installed `vim-tiny`
- Edited `index.html`

---

### Monitor Container
```bash
docker stats
docker stats <container_name>
```

---

### Copy Files from Host to Container
```bash
docker cp /root/photos web_container:/usr/local/apache2/htdocs
```

---

### Container Lifecycle
```bash
docker restart <container>
docker start <container>
docker stop <container>
```

---

### Convert Container to Image
```bash
docker commit <container_id> webcntimg:v1
```

---

### Image Backup
```bash
docker save -o webcntimg.tar webcntimg:v1
docker load -i webcntimg.tar
```

---

### Docker Hub Push
```bash
docker login
docker tag webcntimg:v1 mahathirrm/mahathirdocker:v1.0
docker push mahathirrm/mahathirdocker:v1.0
```

**Issue:** request access denied  
**Cause:** Wrong Docker Hub username  
**Fix:** Corrected username

---

### Image Cleanup
```bash
docker rmi myimg:v1
docker image prune -a
```

---

## Day 4 – Docker Volumes

### Bind Mount
```bash
docker run -itd -p 9128:80 -v /opt/mount:/usr/local/apache2/htdocs httpd
```

---

### Volume Mount
```bash
docker run -itd --name mahathir -p 80:80 --mount type=volume,source=mahathir_cnt,target=/usr/local/apache2/htdocs httpd
```

**Issue:** `apt install vim` failed  
**Fix:** `apt update && apt install vim-tiny`

---

### tmpfs Mount
```bash
docker run -d --name mahathirtmp -p 8883:80 --tmpfs /tmp:rw,size=100m httpd
```

---

## Day 5 – Dockerfile Practice

### Sample Dockerfile
```dockerfile
FROM httpd
RUN apt-get update && apt-get install -y vim-tiny curl
```

Build image:
```bash
docker build -t third:v1 -f Dockerfile.httpd .
```

---

### Dockerfile Naming Convention
- Dockerfile.httpd
- Dockerfile.python
- Dockerfile.entrypoint
- Dockerfile.cmd
- Dockerfile.labels
- Dockerfile.jenkins

---

## ENTRYPOINT vs CMD
- ENTRYPOINT defines executable
- CMD defines default arguments

Override CMD example:
```bash
docker run -it myimg:v1 age.py
```

---

## Day 6 – Networking & Metadata

### Random Port Mapping
```bash
docker run -itd -P httpd
```

---

### EXPOSE
```dockerfile
EXPOSE 8080
```

---

### LABEL
```bash
docker image inspect lbl:v1 --format='{{.Config.Labels}}'
```

---

### Docker Networks
```bash
docker network create mynet
docker network inspect mynet
docker run -itd --network host httpd
```

---

## Status
Hands-on Docker practice completed and documented.
