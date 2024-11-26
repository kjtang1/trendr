#!/bin/bash

sudo service postgresql stop
export PGPORT=8889
export PGHOST=/tmp
pg_ctl -D $HOME/trendr -o '-k /tmp' start
psql -d trendr
