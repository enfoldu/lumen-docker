#!/usr/bin/env bash

## Import database
mysql_import() {
pv /var/mysql/dumps/$1 | gunzip | mysql --host=$2 --user=$3 --password=$4 itovi_dev
}