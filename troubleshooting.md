# Troubleshooting & Common Errors


## ❌ Error: password authentication failed for user
Cause: PostgreSQL user/password mismatch
Solution: Ensure db_user and db_password match PostgreSQL role


## ❌ Error: Using the database user 'postgres' is a security risk
Cause: Odoo forbids using postgres superuser
Solution: Create separate role (e.g. openpg) and update config


## ❌ localhost shows Internal Server Error
Cause: Database connection failed
Solution: Check PostgreSQL running, correct port, correct credentials


## ❌ Terminal cannot stop with CTRL+C
Cause: Odoo server still handling threads
Solution: Press CTRL+C twice or close terminal manually


## ❌ pgAdmin Query Tool disabled
Cause: Not connected to database
Solution: Connect database first, then open Query Tool


## ❌ ModuleNotFoundError (no module named ...)
Cause: Required Python module not installed
Solution: Install module using pip, e.g., `pip install <module>`


## ❌ Module version mismatch
Cause: Installed module version incompatible with Odoo 14
Solution: Install compatible version with `pip install <module>==<version>`


## ❌ Module name differs from error name
Cause: Some modules have different package names, e.g., `win32service` → `pywin32`, `PIL` → `Pillow`
Solution: Install correct package name using pip


## ❌ AttributeError: module has no attribute ...
Cause: Version mismatch or deprecated functions in module
Solution: Upgrade or downgrade module, check Odoo 14 compatibility