#!/bin/sh

pgbench -U postgres -i -s 100 -d test
