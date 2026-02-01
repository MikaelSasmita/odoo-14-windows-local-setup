-- Create Odoo role for database
CREATE USER openpg WITH PASSWORD 'openpgpwd';
ALTER USER openpg CREATEDB;