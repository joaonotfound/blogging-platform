

# <strong>Quickly deploy a blog using Docker and Nginx</strong>

It's a repository to help me to quickly deploy my blog whenever I change my cloud provider. <strong>Unfortunately it can't run on an aws ECS</strong>.

All your ghost data will be storaged on the data and content folder that will be generated. You must save this folders if your don't wanna lose your data.

<i>If you don't know [Ghost](https://ghost.org/) yet it's a self-hosted blogging platform that comes with a lot of plugins and is highly  customizable. So far I consider it the best platform for creating a blog.</i>

## <strong>Requirements</strong>

You'll need a VPS with Nginx and Docker installed and you must have an domain registered on your VPS's IP.

## <strong>Tutorial</strong>

### Clone this project
- `git clone https://gitlab.com/joaonotfound/setup-ghost && cd setup-ghost`

### Set your domain on the docker-compose file
```
    database__connection__database: ghost
    # Your url site
    url: https://yourdomain.com
  db:
```
### Run docker compose

- `sudo PASSWORD="your_database_password" docker compose up -d`

    <i>Your must define a password for your MySQL Database it can be whatever you want to.
If you're running on a Fedora OS, you need to install the `docker-compose` package, because the docker from the Fedora's repositories doesn't come with the compose feature. </i> <br>

### Set your domain on the nginx file
```
    listen [::]:80 default_server;
	server_name yourdomain.com;
	access_log /var/log/nginx/ghost_access.log;
```
### Execute InstallNginx shellscript
- `./install-nginx.sh`
<br>
<i>It's going to ask you for the root password. This script makes your nginx file available to your nginx service so nginx can properly recognize it. </i>
</br>
### Restart the ngixn service
- `sudo /etc/init.d/nginx restart` *or* `systemctl restart nginx`

### Install cerbot on your VPS
- `sudo apt install python3-acme python3-certbot python3-mock python3-openssl  python3-pkg-resources python3-pyparsing python3-zope.interface`
- `sudo apt install python3-certbot-nginx`
<br><i>Those commands is for debian based system only, unfortunately you must search for how to install certbot in your distro if you're using another one. </i></br>
### Activate your SSL certificate
- `sudo certbot --nginx -d yourdomain.com`
<br>
<i>Activating SSL certificate is required so you can access your blog through HTTPS protocol.</i>
<br>



