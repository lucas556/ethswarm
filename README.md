# ETH Swarm

## 资料

官方 Docs: https://docs.ethswarm.org/

区块链浏览器 : https://goerli.etherscan.io/


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

