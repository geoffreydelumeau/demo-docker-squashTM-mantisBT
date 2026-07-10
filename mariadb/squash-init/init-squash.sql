CREATE DATABASE IF NOT EXISTS squashdb CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER IF NOT EXISTS 'squash_user'@'%' IDENTIFIED BY 'squash_password';

-- 1. Donner tous les privilèges sur la base avec option de transmission (indispensable pour Liquibase)
GRANT ALL PRIVILEGES ON *.* TO 'squash_user'@'%' WITH GRANT OPTION;

-- 2. Créer le rôle obligatoire requis par Squash TM
CREATE ROLE IF NOT EXISTS alter_squash_table_seq;

-- 3. Assigner le rôle à l'utilisateur AVEC l'option d'administration globale
GRANT alter_squash_table_seq TO 'squash_user'@'%' WITH ADMIN OPTION;

-- 4. Définir le rôle comme actif par défaut pour cet utilisateur
SET DEFAULT ROLE alter_squash_table_seq FOR 'squash_user'@'%';

FLUSH PRIVILEGES;