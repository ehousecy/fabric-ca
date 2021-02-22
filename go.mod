module github.com/hyperledger/fabric-ca

go 1.15

replace (
	github.com/Hyperledger-TWGC/ccs-gm => github.com/ehousecy/ccs-gm v0.1.2-0.20210222080840-906b77c76677
	github.com/hyperledger/fabric => github.com/ehousecy/fabric v1.4.0-rc1.0.20210222083237-a9d9dffd69e8
)

require (
	github.com/Hyperledger-TWGC/ccs-gm v0.1.2-0.20210202011810-d006f903c43e
	github.com/Knetic/govaluate v3.0.1-0.20171022003610-9aa49832a739+incompatible
	github.com/cloudflare/cfssl v1.4.1
	github.com/felixge/httpsnoop v1.0.1
	github.com/go-kit/kit v0.8.0
	github.com/go-logfmt/logfmt v0.5.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0
	github.com/golang/protobuf v1.4.3
	github.com/google/certificate-transparency-go v1.0.21
	github.com/gorilla/handlers v1.5.1
	github.com/gorilla/mux v1.8.0
	github.com/grantae/certinfo v0.0.0-20170412194111-59d56a35515b
	github.com/hyperledger/fabric v1.4.9
	github.com/hyperledger/fabric-amcl v0.0.0-20200424173818-327c9e2cf77a
	github.com/hyperledger/fabric-lib-go v1.0.0
	github.com/jmoiron/sqlx v1.2.0
	github.com/kisielk/sqlstruct v0.0.0-20201105191214-5f3e10d3ab46
	github.com/lib/pq v1.8.0
	github.com/mattn/go-sqlite3 v1.14.5
	github.com/mitchellh/mapstructure v1.3.3
	github.com/onsi/ginkgo v1.14.2
	github.com/onsi/gomega v1.10.3
	github.com/op/go-logging v0.0.0-20160315200505-970db520ece7
	github.com/pkg/errors v0.9.1
	github.com/pkg/profile v1.5.0
	github.com/prometheus/client_golang v1.1.0
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/prometheus/procfs v0.2.0 // indirect
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.3.2
	github.com/stretchr/testify v1.6.1
	github.com/sykesm/zap-logfmt v0.0.4 // indirect
	golang.org/x/crypto v0.0.0-20201117144127-c1f2f97bffc9
	golang.org/x/net v0.0.0-20201010224723-4f7140c49acb
	golang.org/x/sys v0.0.0-20201015000850-e3ed0017c211 // indirect
	google.golang.org/grpc v1.31.0 // indirect
	gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d // indirect
	gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15 // indirect
	gopkg.in/ldap.v2 v2.5.1
)
