FROM golang:1.8
LABEL MAINTAINER="Minh T. minhtran.in@outlook.com"
RUN go get github.com/labstack/echo && \
  go get github.com/dgrijalva/jwt-go && \
  go get github.com/jinzhu/gorm && \
  go get github.com/jinzhu/gorm/dialects/mysql && \
  go get gopkg.in/mailgun/mailgun-go.v1 && \
  go get gopkg.in/mgo.v2/bson && \
  go get github.com/savaki/geoip2 && \
  go get github.com/satori/go.uuid && \
  go get github.com/stretchr/testify/assert && \
  go get github.com/onsi/ginkgo/ginkgo && \
  go get github.com/onsi/gomega && \
  go get github.com/jlaffaye/ftp && \
  go get github.com/speps/go-hashids && \
  go get github.com/pkg/errors && \
  go get github.com/crunchyroll/ectoken3 && \
  go get github.com/sirupsen/logrus && \
  go get github.com/getsentry/raven-go && \
  go get gopkg.in/mgo.v2 && \
  go get github.com/mailjet/mailjet-apiv3-go
WORKDIR /go/src/easycast/src
COPY src /go/src/easycast/src
EXPOSE 8000
CMD ["go", "run", "main.go"]
