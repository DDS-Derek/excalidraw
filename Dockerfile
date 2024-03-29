FROM node:16-alpine3.16 AS build

WORKDIR /app

RUN apk update && \
	apk add --no-cache ca-certificates git && \
	update-ca-certificates && \
	git clone --depth 1 https://git.ddsrem.gq/DDSRem/excalidraw-v0.12.0.git . && \
	yarn set version berry && \
	yarn install && \
	yarn up -R eslint postcss react-scripts && \
	npx browserslist@latest --update-db

COPY . .

RUN yarn build:app:docker

FROM ddsderek/foundations:Alpine3.16.0-nginx1.22

COPY --from=build /app/build /app/web

ADD ./shell /shell

RUN mv /app/web /opt/web && \
    chmod -R 755 /shell
