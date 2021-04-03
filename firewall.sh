#!/usr/bin/bash
#OPTIONS=--dry-run
OPTIONS=
ufw $OPTIONS default deny incoming
ufw $OPTIONS deny ssh
ufw $OPTIONS deny http
ufw $OPTIONS deny https
ufw $OPTIONS allow from 192.168.4.0/24 to any port ssh
ufw $OPTIONS limit ssh/tcp
ufw $OPTIONS allow from 192.168.4.0/24 to any port http
ufw $OPTIONS allow from 192.168.4.0/24 to any port https
