# Fabric CA Developer's Guide

This is the Developer's Guide for Fabric CA, which is a Certificate Authority for Hyperledger Fabric.

See [User's Guide for Fabric CA](https://hyperledger-fabric-ca.readthedocs.io) for information on how to use Fabric CA.

## Prerequisites

* Go 1.13+ installation or later
* **GOPATH** environment variable is set correctly
* docker version 17.03 or later
* docker-compose version 1.11 or later
* A Linux Foundation ID  (see [create a Linux Foundation ID](https://identity.linuxfoundation.org/))

-[ ] 切入场景
 -[ ] 本地使用国密ca证书和私钥启动fabric-ca-server
   -[ ] 参数
    ```
   #环境变量
   FABRIC_CA_HOME=/etc/hyperledger/fabric-ca-server;FABRIC_CA_SERVER_CA_NAME=ca-org1;FABRIC_CA_SERVER_TLS_ENABLED=true;FABRIC_CA_SERVER_TLS_CERTFILE=/opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem;FABRIC_CA_SERVER_TLS_KEYFILE=/opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/priv_sk;FABRIC_CA_SERVER_PORT=7054
   #命令行启动参数
   start --ca.certfile /opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem --ca.keyfile /opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/priv_sk -b admin:adminpw
    ```
## 常见错误
```
Error: Validation of certificate and key failed: Invalid certificate in file '/opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem': Error parsing certificate: x509: unsupported elliptic curve
解决方案：validateCertAndKey 修改证书转换方案以支持sm2.Ceritficate
```
```
Failed parsing EC private key: x509: failed to parse EC private key embedded in PKCS#8: x509: unknown elliptic curve
解决方案：通过curve做适配
```
```
 Could not find the private key in BCCSP keystore nor in keyfile '/opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/priv_sk': Failed parsing private key from /opt/goworkspace/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/ca/priv_sk: Invalid key type. The DER must contain an rsa.PrivateKey or ecdsa.PrivateKey
解决方案：bccsp添加密钥支持
 ```
