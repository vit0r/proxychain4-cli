# proxychains4-cli

this CLI run commands [python,wget,telnet,curl] with proxychains4

1. Rename proxychains-sample.conf to proxychains.conf
2. Add proxys addresses in [ProxyList] like:

```bash
[ProxyList]
socks5 ip port # change ip and port
```

```bash
docker build -t ${USERNAME}/proxychains4-cli . 

docker run --rm  ${USERNAME}/proxychains4-cli curl http://ip-api.com
```
