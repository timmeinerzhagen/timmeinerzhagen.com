# WORK IN PROGRESS

# 1) Install nginx
sudo apt update
sudo apt install nginx

# Add DynamicDNS contrab job
sudo crontab -l > mycron #write out current crontab
sudo echo "*/5 * * * * sh /home/timclouduser/tmeinerzhagen.de/ddnstest.sh" >> mycron #echo new cron into cron file
sudo crontab mycron #install new cron file
sudo rm mycron
