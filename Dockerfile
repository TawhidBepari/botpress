FROM node:18-alpine

WORKDIR /botpress

COPY . .

RUN npm install -g pnpm && pnpm install --frozen-lockfile

EXPOSE 3000

CMD ["pnpm", "start"]
