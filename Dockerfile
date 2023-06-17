# docker build . -t go-hello-image
# docker run  go-hello-image --name go-hello -p 8080:8080
FROM golang:1.19.5

RUN apt update -y && apt upgrade -y

WORKDIR /app

COPY app/* ./

CMD ["go", "run", "main.go"]
