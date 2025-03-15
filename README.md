### About
This repo contains other cruicial files that were needed for deployment on EC2 server. It is to note that 
both the frontend and backend are deployed on same EC2 instance. I made use of Nginx as a http server
and also a reverse-proxy for the requests. 

### default
This file is at location /etc/nginx/sites-available/default.
<br>
It contains necessary stuff for proper function of Nginx and reverse proxy info.

### springboot.service
This file is present at location /etc/systemd/system
<br>
Meaning this is a custom systemd service. This runs the backend and also stores the output logs appropriately.
