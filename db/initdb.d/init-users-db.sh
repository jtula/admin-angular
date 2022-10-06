#!/usr/bin/env bash
 
set -e
 
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE admin-angular ENCODING UTF8;
	GRANT ALL PRIVILEGES ON DATABASE admin-angular TO admin-angular;
	
	ALTER USER admin WITH SUPERUSER;
EOSQL