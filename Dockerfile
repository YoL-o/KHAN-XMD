FROM node:20-bookworm-slim

USER root
RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN npm install

ENV NODE_ENV=production
EXPOSE 7860

CMD ["npm", "start"]
