## [Nginx Proxy Manager](https://github.com/NginxProxyManager/nginx-proxy-manager)
![](https://icons-for-free.com/iff/png/256/nginx+proxy+manager-1331550891378311340.png)
![npm.svg](./img/npm.svg)

## First launch
```bash
Email: admin@example.com
Password: changeme
```
Create network:
```bash
docker network create -d bridge your_network
```

Add service (docker container) in network:
```
docker network connect your_network your_service
```
## [TOR](https://github.com/zerolabnet/tor-bridges-proxy)
![image](https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Tor-logo-2011-flat.svg/306px-Tor-logo-2011-flat.svg.png)

**Checking work:**<br>
```bash
# Inside of container
curl --socks5 http://localhost:9050 -L https://2ip.ru
# From another container (192.168.0.140 - ip host)
curl --socks5 http://192.168.0.140:9050 -L https://2ip.ru
```
**Proxy server in Firefox:**<br>
![picture](https://lumpics.ru/wp-content/uploads/2016/08/Tor-dlya-Firefox-3.png)
