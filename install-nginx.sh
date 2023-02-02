sudo su -
cp ./nginx/ghost /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/ghost
