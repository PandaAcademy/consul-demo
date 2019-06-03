### Mini przykład consul

- Dla Ubuntu, aby przyklad dzialał trzeba wyłączyć:

`sudo systemctl stop systemd-resolved`

- `/etc/resolv.conf` dodać / zmienić na DNS brany z consula:

`nameserver 127.0.0.1`
