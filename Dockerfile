# docker build . -t go-hello
# docker run --name go-hello -p 8080:8080 go-hello

# ecr push
# docker build -t go-hello .
# aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/l8j1p1w0
# docker tag go-hello:latest public.ecr.aws/l8j1p1w0/go-hello:latest
# docker push public.ecr.aws/l8j1p1w0/go-hello:latest
FROM --platform=linux/amd64  golang:1.19.5

RUN apt update -y && apt upgrade -y

WORKDIR /app

COPY app/ ./

RUN go mod tidy

CMD ["go", "run", "main.go"]
