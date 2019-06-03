#!/bin/bash
echo "Hello, Panda! <br> Jestem serwis $INDEKS<br>" > index.html
### Stworz klucz / wartość jeśli nie istnieje
test=`curl http://consul:8500/v1/kv/panda_config`; [[ -z $test ]] && curl -X PUT --data "{klucz:wartosc}" http://consul:8500/v1/kv/panda_config
### Pobierz klucz / wartość i dodaj do strony
curl http://consul:8500/v1/kv/panda_config?raw >> index.html
busybox httpd -f -p 8080