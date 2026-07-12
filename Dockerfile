COPY --from=build /app/dist /usr/share/nginx/html
FROM node:20 AS build
RUN npm clean-install
FROM nginx:alpine
COPY ..
RUN npm run build
WORKDIR /app
