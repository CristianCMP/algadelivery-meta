#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE courierdb;
	CREATE DATABASE deliverydb;
	CREATE DATABASE courierdb_test;
	CREATE DATABASE deliverydb_test;
EOSQL