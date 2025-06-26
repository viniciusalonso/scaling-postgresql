#!/bin/sh

psql -U postgres -a -f pgbench/test/create_db.sql

# pgbench -U postgres -d postgres -f create_tables.sql
