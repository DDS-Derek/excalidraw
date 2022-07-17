FROM node:16-alpine3.16 AS build

WORKDIR /app

RUN apk update && \
	apk add --no-cache ca-certificates git && \
	update-ca-certificates && \
	git clone --depth 1 https://github.com/mebtte/excalidraw.git . && \
	yarn set version berry && \
	yarn install && \
	yarn up -R eslint postcss react-scripts && \
	npx browserslist@latest --update-db

FROM ddsderek/foundations:Alpine3.16.0-nginx1.22

COPY --from=build /app/build /app/web
COPY ./start.sh /

RUN mv /app/web /opt/web && \
    chmod +x /start.sh

ENTRYPOINT [ "/start.sh" ]
