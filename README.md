

# MY GHOST SETUP

All your ghost data will be storaged on the data and content folder that will be generated. You must save this folders if your don't want to lose your data. 

# HOW TO RUN: 

Clone the project: 
`git clone https://gitlab.com/joaonotfound/setup-ghost && cd setup-ghost`

Run docker compose: 
`sudo PASSWORD="your_database_password" docker compose up -d`
Your must define a password for your MySQL Database it can be whatever you want to.

Clone nginx:
`sudo cp ./nginx/ghost /etc/nginx/sites-available/ `
AND
`ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/ghost`

Restart nginx
`/etc/init.d/nginx restart` or `systemctl restart nginx`

