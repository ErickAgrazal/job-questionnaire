#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE EXTENSION pgcrypto;
    
    CREATE TABLE clients (
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        address TEXT,
        city TEXT,
        state TEXT,
        zip_code TEXT
    );
    CREATE TABLE users (
        id SERIAL PRIMARY KEY,
        client_id INT NOT NULL,
        name TEXT NOT NULL,
        password TEXT NOT NULL,
        username TEXT NOT NULL UNIQUE,
        FOREIGN KEY (client_id)
            REFERENCES clients(id)
    );
    INSERT INTO clients (name, address, city, state, zip_code)
    VALUES ('PEQA', 'Santa Clara', 'Panama', 'Panama', '123312'),
           ('Apple', '6th ave.', 'Doral', 'Florida', '442123'),
           ('Tesla', '7th ave.', 'Doral', 'Florida', '333212'),
           ('MKBHD', 'Central Park', 'New York', 'New York', '55555');

    INSERT INTO users (client_id, name, password, username)
    VALUES (1, 'Erick Agrazal', crypt('znC032zL9ylnNbVoDAlTd', gen_salt('bf')), 'erick.agrazal'),
           (2, 'Javier Frias', crypt('znC032zL9bVoDAlTdylnN', gen_salt('bf')), 'javier.frias'),
           (2, 'Vicente Gordon', crypt('bVoDAlTdylnNznC032zL9', gen_salt('bf')), 'vicente.gordon'),
           (2, 'Rolando Cepeda', crypt('ylnNbVoDAlTdznC032zL9', gen_salt('bf')), 'rolando.cepeda'),
           (3, 'Roody Ramos', crypt('NbVoDAl032zL9ylnTdznC', gen_salt('bf')), 'roody.ramos'),
           (4, 'Cindy Smith', crypt('NbVoDAlnC032zL9ylnzTd', gen_salt('bf')), 'cindy.smith');
EOSQL