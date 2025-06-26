#!/bin/sh

pgbench -U postgres -c 10 -T 60 -j 10 -f pgbench/template_development/select.sql template_development
