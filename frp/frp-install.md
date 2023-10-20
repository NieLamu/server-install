## install frp and use https

### edit frps
MMMMODIFY PASSWORD in configuration
```bash
vim /root/frp/frps.toml
```
MMMMODIFY path in service
```bash
vim /etc/systemd/system/frps.service
```
restart service
```bash
sudo systemctl restart frps
```
view logs
```bash
sudo journalctl -fu frps
```

### modify dashboard port
add configuration
```bash
sudo vim /etc/nginx/sites-available/frps-dashboard
```
use `nginx-conf/frps-dashboard` and MMMMODIFY cert file path
```bash
sudo ln -s /etc/nginx/sites-available/frps-dashboard /etc/nginx/sites-enabled/
```
