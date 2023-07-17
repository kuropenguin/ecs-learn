# docker build . -t go-hello-image
# docker run --name go-hello -p 8080:8080 go-hello-image
FROM golang:1.19.5

RUN apt update -y && apt upgrade -y

WORKDIR /app

COPY app/ ./

RUN go mod tidy

CMD ["go", "run", "main.go"]
