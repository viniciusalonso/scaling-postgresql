#!/bin/sh

# -n: desativa o comportamento de transação padrão do pgbench (para evitar conflitos com seu script).
# -f insert.sql: usa o script customizado.
# -t 100: executa 100 transações por conexão.

pgbench -U postgres -n -f insert.sql -t 100 template_development
