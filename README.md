### Mini przykład consul

- Dla Ubuntu, aby przyklad dzialał trzeba wyłączyć:

`sudo systemctl stop systemd-resolved`

- `/etc/resolv.conf` dodać / zmienić na DNS consula:

`nameserver 127.0.0.1`

### Użycie:
`docker-compose up -d`

W przypadku nie uruchamiania się Consula, ze względu na zajęty port 53:
`sudo netstat -tulpen|grep 53`

Wyłączyć proces, który blokuje port.

Consul jest dostępny pod 127.0.0.1:8500
2 serwisy powinny być dostępne pod service1.service.consul:8080 (ctrl + F5 w przeglądarce powinnien co jakiś przerzucać pomiędzy nimi)






