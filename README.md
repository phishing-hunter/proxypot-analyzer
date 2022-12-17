# proxypot analyzer

[proxypot](https://github.com/phishing-hunter/proxypot)のログ解析ツール  
基本的にハニーポットを設置したマシンと同居させないでください。  

## mmdbの配置
以下のようにmmdbを置いてください。
最新のファイルは[maxmind](http://www.maxmind.com/)へアカウント登録することでダウンロードすることができます。
```bash
docker/suscriber/geolite
|-- GeoLite2-ASN.mmdb
`-- GeoLite2-City.mmdb
```

## 脅威情報の更新
```bash
$ ./docker/suscriber/translate/update.sh
$ docker-compose up -d --build maltrail
```

## 起動方法
```bash
$ docker-compose up -d --build publisher suscriber kibana
```

## ログの転送
SSHなどを使って解析マシンへログを転送します。
```bash
$ scp proxypot2:/data/httpd-honeypot.local.json.2022-11-27 ./data
```
