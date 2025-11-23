#!/bin/bash
DBNAME="sirm_eco_db"
USER="postgres"

psql -U $USER -d $DBNAME -f ddl/01_create_tables.sql
psql -U $USER -d $DBNAME -f dml/01_insert_data.sql
psql -U $USER -d $DBNAME -f dml/02_select_queries.sql
psql -U $USER -d $DBNAME -f dml/03_update_examples.sql
psql -U $USER -d $DBNAME -f dml/04_delete_examples.sql
