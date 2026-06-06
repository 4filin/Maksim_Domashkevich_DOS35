#!/usr/bin/env bash

curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor -o /etc/apt/keyrings/postgresql.gpg

echo "deb [signed-by=/etc/apt/keyrings/postgresql.gpg] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list

sudo apt update

sudo apt install -y postgresql-16 postgresql-client-16

sudo systemctl stop postgresql

sudo systemctl disable postgresql

sudo mkdir -p /var/lib/postgresql/16/main

sudo chown -R postgres:postgres /var/lib/postgresql/16/main