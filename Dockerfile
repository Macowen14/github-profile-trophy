FROM denoland/deno:latest

WORKDIR /app
COPY . .

RUN deno cache debug.ts

EXPOSE 8080
CMD ["deno", "run", "--allow-net", "--allow-read", "--allow-env", "debug.ts"]
