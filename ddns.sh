#!/bin/bash

. ./config.conf

# Get own current IP
myip=$(curl -s "https://api.ipify.org")
# Get currently saved IP from CloudFront
dnsdata=$(curl -s -X GET "${cf_api_url}/zones/${zone_id}/dns_records?name=${record_name}&type=A" \
        -H "Authorization: Bearer ${cf_api_key}")
gdip=$(echo $dnsdata | jq -r ".result[].content")
echo "`date '+%Y-%m-%d %H:%M:%S'` - Current External IP is $myip, CloudFront IP is $gdip"

if [ "$gdip" != "$myip" -a "$myip" != "" ]; then
    echo "IP has changed. Updating on CloudFront"
    res=$( \
        curl -s -X PUT "${cf_api_url}/zones/${zone_id}/dns_records/${record_id}" \
            -H "Authorization: Bearer ${cf_api_key}" \
            -H "Content-Type: application/json" \
            --data '{"id": "'${zone_id}'", "type":"A","name":"'${record_name}'","content":"'${gdip}'","ttl":1,"proxied":false}')
    echo "Changed IP in CloudFront from ${gdip} to ${myip}"
fi