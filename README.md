

# <strong>MY GHOST SETUP</strong>

All your ghost data will be storaged on the data and content folder that will be generated. You must save this folders if your don't want to lose your data.

<br>

### HOW TO RUN:
<br>

<strong>Clone the project:</strong> 

`git clone https://gitlab.com/joaonotfound/setup-ghost && cd setup-ghost`

<br>

<strong>Run docker compose:</strong>

<i>Your must define a password for your MySQL Database it can be whatever you want to.</i>

`sudo PASSWORD="your_database_password" docker compose up -d`

<br>

<strong>Clone nginx:</strong>

`sudo cp ./nginx/ghost /etc/nginx/sites-available/ `

`sudo ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/ghost`



**Restart nginx:**

`sudo /etc/init.d/nginx restart` *ou* `systemctl restart nginx`

