FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/gin-gonic/gin
RUN go build -o main . 

EXPOSE 8080:8080

CMD ["/app/main"]