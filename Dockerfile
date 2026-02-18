FROM node:20-buster

USER root
RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy your own repo files
COPY . .

# Install dependencies
RUN npm install

EXPOSE 7860
ENV NODE_ENV=production

CMD ["npm", "start"]
