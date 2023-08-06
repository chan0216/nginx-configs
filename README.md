# nginx-configs

此 repository 包含 [Ncard](https://github.com/chan0216/Ncard-2.0) 和 [台北一日遊](https://github.com/chan0216/taipei-day-trip-website) 
的 Nginx 部署與配置檔案

## 檔案說明
`user_conf.d` 目錄下的`ncard.chandev.cc.conf`及`trip.chandev.cc.conf`
- 針對各自的網域配置專屬的日誌檔。
- 設定 SSL 憑證
- 配置反向代理

`nginx.conf`
<br> Nginx 基本和安全設定的配置檔

`docker-compose.yml`
<br>使用的 image 是參考 [docker-nginx-certbot](https://github.com/JonasAlfredsson/docker-nginx-certbot)，
建置 Nginx 及自動生成 Let's Encrypt SSL 憑證

