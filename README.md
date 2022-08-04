# excalidraw
amd64部署
```
docker run -itd \
  --name excalidraw \
  -p 8063:80 \
  -e TZ=Asia/Shanghai \
  -e PUID=1000 \
  -e PGID=1000 \
  -v /root/excalidraw/data:/app/web \
  --restart always \
  ddsderek/excalidraw:latest
```
```
version: '3.3'
services:
    excalidraw:
        ports:
            - '8063:80'
        environment:
            - TZ=Asia/Shanghai
            - PUID=1000
            - PGID=1000
        volumes:
            - './data:/app/web'
        restart: unless-stopped
        image: 'ddsderek/excalidraw:latest'
```
linux/arm/v6，linux/arm/v7，linux/arm64/v8，linux/ppc64le，linux/s390x部署
```
docker run -itd \
  --name excalidraw \
  -p 8063:80 \
  -e TZ=Asia/Shanghai \
  -e PUID=1000 \
  -e PGID=1000 \
  -v /root/excalidraw/data:/app/web \
  --restart always \
  ddsderek/excalidraw:latest-other
```
```
version: '3.3'
services:
    excalidraw:
        ports:
            - '8063:80'
        environment:
            - TZ=Asia/Shanghai
            - PUID=1000
            - PGID=1000
        volumes:
            - './data:/app/web'
        restart: unless-stopped
        image: 'ddsderek/excalidraw:latest-other'
```
