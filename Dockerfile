FROM golang:1.8

WORKDIR /go/src/shoelaces
COPY . .

#RUN go get -d -v ./
RUN go get github.com/thousandeyes/shoelaces

RUN cd $GOPATH/src/github.com/thousandeyes/shoelaces && go build
#RUN go install -v ./

EXPOSE 8081/tcp 8081/udp

ENTRYPOINT ["/go/bin/shoelaces"]