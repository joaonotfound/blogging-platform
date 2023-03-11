sudo su -
sed -i "s/yourdomain.com/$DOMAIN/g" nginx/ghost
cp ./nginx/ghost /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/ghost
/etc/init.d/nginx restart