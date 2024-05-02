#!bin/sh
release="/opt/releases.txt"
if test -f "$release"; then
    echo "SETTING ODOO and PGADMIN URL"
    export ODOO_URL=$(awk 'NR==1 {print $2}' $release )
    export PGADMIN_URL=$(awk 'NR==2 {print $2}' $release )
    export version=$(awk '/version/{print $2}' $release)
else
  echo "Using Default URLS"
fi
exec "$@"



