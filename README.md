# timmeinerzhagen.de

Conent and setup for the personal website [timmeinerzhagen.de](https://www.timmeinerzhagen.de).

## Installation
```
# Install nginx
sudo apt update
sudo apt install nginx

# Clone repository
sudo apt install git
git clone https://github.com/timmeinerzhagen/timmeinerzhagen.de.git

# Create nginx config
{
        echo '  server {
        echo '      listen 80;
        echo '      listen [::]:80;
        echo '      root /home/timclouduser/timmeinerzhagen.de/website;
        echo '      index index.html index.htm index.nginx-debian.html;
        echo '      server_name timmeinerzhagen.de www.timmeinerzhagen.de;
        echo '      location / {
        echo '          try_files $uri $uri/ =404;
        echo '      }
        echo '  }
       
} >> /etc/nginx/sites-available/timmeinerzhagen.de
sudo ln -s /etc/nginx/sites-available/timmeinerzhagen.de /etc/nginx/sites-enabled/
sudo systemctl restart nginx

# Configure Dynamic DNS

# (In progress) Add certificates for HTTPS
sudo apt-get install certbot python-certbot-nginx
sudo certbot --nginx
```

## Credit
The template ["Halcyon Days"](http://tympanus.net/codrops/2014/07/14/freebie-halcyon-days-one-page-website-template/) made by [Peter Finlan](http://peterfinlan.com/) was used in this project.

## License
Use freely under MIT license.
