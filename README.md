# excalidraw
amd64部署
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
