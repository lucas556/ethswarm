# ETH Swarm

## 资料
官网 : https://swarm.ethereum.org/

官方 Docs: https://docs.ethswarm.org/

区块链浏览器 : https://goerli.etherscan.io/

Debug api : https://docs.ethswarm.org/debug-api/

## 命令

### 查询
```
连接测试 : curl http://localhost:1633
查询peers : curl -s http://localhost:1635/peers | jq '.peers | length'
查询支票 : curl localhost:1635/chequebook/cheque | jq
查询网络拓补 : curl -X GET http://localhost:1635/topology | jq
查询当前节点余额 : curl http://localhost:1633
查询对等余额 : curl localhost:1635/balances | jq
查询节点地址 : curl http://localhost:1635/addresses

```

### bee节点
```
状态查询 : systemctl status bee
启动bee : systemctl start bee
查看实时日志 : journalctl --lines=100 --follow --unit bee
```
### 0.5.3 peers 链接

bootnode or curl:
```
curl -X POST localhost:1635/connect/ip4/43.129.167.250/tcp/1634/p2p/16Uiu2HAkwNE3QqhoRLgyeEM3AknBKpYttS3LG2rLJJxsRRAVmXJv
```

```
bootnode:
- /dnsaddr/bootnode.ethswarm.org
- /ip4/43.129.167.250/tcp/1634/p2p/16Uiu2HAkwNE3QqhoRLgyeEM3AknBKpYttS3LG2rLJJxsRRAVmXJv
```
```
香港:  /ip4/43.129.167.250/tcp/1634/p2p/16Uiu2HAkwNE3QqhoRLgyeEM3AknBKpYttS3LG2rLJJxsRRAVmXJv
广州: 
```

## 问题

```
Too many open files
ps -ef | grep 'bee start --config /etc/bee/bee.yaml'
sudo prlimit --nofile=1048576 --nproc=unlimited --rtprio=99 --nice=-19 --pid $

```
