## Hyperledger Fabric-CA 国密改造
>> 这是基于fabric-ca修改的支持国密算法的fabric，已通过命令行完成网络部署以及链码操作测试。

## 改造思路
- [x] bccsp国密支持(此处直接引用国密版fabric)
  - [x] bccspKeyOpts 国密支持
  - [x] bccspKeyImport 国密密钥支持
- [x] 增加国密版CA、Signer
- [x] 根据算法选择不同的Signer
  - [x] 获取ca/ca证书时Signer的选择
  - [x] 证书签名请求时Signer的选择
- [x] x509证书适配及转换
- [x] tls国密支持
  - [x] tls.config配置
  - [x] net/http国密支持
- [x] 代码适配

## 使用手册

### 国密模式
- fabric-ca-server
```
# 启动时重写环境变量如下：
FABRIC_CA_SERVER_CSR_KEYREQUEST_ALGO=gmsm2 //默认是ecdsa
FABRIC_CA_SERVER_CSR_KEYREQUEST_SIZE=256   //默认是256
```
- fabric-ca-client
```
# register/enroll/reenroll... 需指定keyRequest的算法和大小(默认是ecdsa/256)
--csr.keyrequest.algo gmsm2 --csr.keyrequest.size 256
```

## 关于我们
国密化改造工作主要由ehousecy完成，想要了解更多/商业合作/联系我们，欢迎访问我们的[官网](https://ebaas.com/)。