#!bin/bash
release="/usr/local/bin/releases.txt"
if test -f "$release"; then
    echo "---- ODOO_URL and PGADMIN_URL ----"
    export ODOO_URL=$(awk 'NR==1 {print $2}' $release )
    export PGADMIN_URL=$(awk 'NR==2 {print $2}' $release )
else
  echo "Default URL for ODOO and PGADMIN"
fi
exec "$@"



