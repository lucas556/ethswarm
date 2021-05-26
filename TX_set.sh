#!/bin/bash

apt-get update

sudo apt install -y ntpdate
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ntpdate time1.tencentyun.com

wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb

systemctl status bee-clef

wget https://github.com/ethersphere/bee/releases/download/v0.6.1/bee_0.6.0_amd64.deb
sudo dpkg -i bee_0.6.0_amd64.deb

sudo dpkg -i bee_0.5.3_amd64.deb

rm -rf /etc/bee/bee.yaml

  cat > /etc/bee/bee.yaml << EOF

# bee-config.yaml 
api-addr: :1633
bootnode:
- /dnsaddr/bootnode.ethswarm.org
bootnode-mode: false
clef-signer-enable: false
clef-signer-endpoint: ""
clef-signer-ethereum-address: ""
cors-allowed-origins: []
data-dir: /Users/sig/.bee
db-block-cache-capacity: "33554432"
db-capacity: "5000000"
db-disable-seeks-compaction: false
db-open-files-limit: "2000"
db-write-buffer-size: "33554432"
debug-api-addr: 127.0.0.1:1635
debug-api-enable: true
full-node: true
gateway-mode: false
global-pinning-enable: false
help: false
nat-addr: "127.0.0.1:1634"
network-id: "1"
p2p-addr: :1634
p2p-quic-enable: false
p2p-ws-enable: false
password: ""
password-file: ""
payment-early: "1000000000000"
payment-threshold: "10000000000000"
payment-tolerance: "50000000000000"
resolver-options: https://goerli.infura.io/v3/a94efcb8cd614241b7d2d8eccfbc7018
standalone: false
swap-enable: true
swap-endpoint: wss://goerli.infura.io/ws/v3/a94efcb8cd614241b7d2d8eccfbc7018
swap-factory-address: ""
swap-initial-deposit: "100000000000000000"
tracing-enable: false
tracing-endpoint: 127.0.0.1:6831
tracing-service-name: bee
verbosity: info
welcome-message: "lucas"
EOF
