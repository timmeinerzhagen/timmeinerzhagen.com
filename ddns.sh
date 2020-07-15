#!/bin/bash

source ./config.sh

`${curl_command} -s -X GET -H "Content-Type: application/json"`

myip=`curl -s "https://api.ipify.org"`
dnsdata=`curl -s -X GET "${cf_api_url}/zones/"#${zone_id}/dns_records?name=${record_name}&type=A"
    -H "X-Auth-Email: ${cf_email}"
    -H "X-Auth-Key: ${cf_api_key}"  
    -H "Content-Type: application/json"`
gdip=`echo $dnsdata | cut -d ',' -f 1 | tr -d '"' | cut -d ":" -f 2`
echo "`date '+%Y-%m-%d %H:%M:%S'` - Current External IP is $myip, GoDaddy DNS IP is $gdip"

# if [ "$gdip" != "$myip" -a "$myip" != "" ]; then
#   echo "IP has changed!! Updating on GoDaddy"
#   curl -s -X PUT "${cf_api_url}/zones/${zone_id}/dns_records/${record_id}"
#     -H "X-Auth-Email: ${cf_email}"
#     -H "X-Auth-Key: ${cf_api_key}" 
#     -H "Content-Type: application/json" 
#     -d "{\"id\":\"${zone_id}\",\"type\":\"A\",\"name\":\"${record_name}\",\"content\":\"${record_id}\"}"
#   logger -p $logdest "Changed IP on from ${gdip} to ${myip}"
# fi