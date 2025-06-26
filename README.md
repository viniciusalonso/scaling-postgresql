# Scaling PostgreSQL

This project contains some examples used in the talk "Escalando o PostgreSQL". You can find the slides [here PT-BR](https://speakerdeck.com/viniciusalonso/escalando-postgresql).

The directory scripts has the commands used to reproduce the performance tests:

```txt
scripts
├── materialized_view.sql
├── pg_stat_statements.txt
└── pgbench
    ├── template_development
    │   ├── fill_tables.sh
    │   ├── insert.sql
    │   ├── load_test.sh
    │   └── select.sql
    └── test
        ├── create_database.sh
        ├── create_db.sql
        └── load_test.sh
```
