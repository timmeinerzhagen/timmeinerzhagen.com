# WORK IN PROGRESS

# 1) Install nginx
sudo apt update
sudo apt install nginx

# Dependencies
sudo apt install curl # web calls
sudo apt install jq # json

# Add DynamicDNS contrab job
sudo crontab -l > mycron #write out current crontab
sudo echo "*/5 * * * * sh /home/timclouduser/timmeinerzhagen.de/ddnstest.sh" >> mycron #echo new cron into cron file
sudo crontab mycron #install new cron file
sudo rm mycron
