## Hyperledger Fabric-CA 国密改造
>> 这是基于fabric-ca修改的支持国密算法的fabric，已通过命令行完成网络部署以及链码操作测试。

## 改造思路
- [ ] 增加国密版ca/signer
- [ ] 根据算法选择不同的signer
- [ ] x509证书适配

## 待办事项
- [ ] 目前只测试了register/enroll/reenroll,后续要做更多测试
- [ ] tls部分国密支持

## 使用手册

### 国密模式
- fabric-ca-server
```
// 启动时重写环境变量如下()：
FABRIC_CA_SERVER_CSR_KEYREQUEST_ALGO=gmsm2 //默认是ecdsa
FABRIC_CA_SERVER_CSR_KEYREQUEST_SIZE=256   //默认是256
```
- fabric-ca-client
```
## register/enroll/reenroll... 需指定keyRequest的算法和大小(默认是ecdsa/256)
--csr.keyrequest.algo gmsm2 --csr.keyrequest.size 256
```
