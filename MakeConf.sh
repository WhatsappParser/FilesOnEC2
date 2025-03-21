#!/bin/bash
# input file containing Indian IP ranges
IP_FILE="./India_ips.txt"
# output Nginx config file
CONF_FILE="./India_ips.conf"
# Check if the input file exists
if [ ! -f "$IP_FILE" ]; then
         echo "Error: $IP_FILE not found!" 
        exit 1 
fi

echo "# Indian IP ranges for Nginx" > "$CONF_FILE"
# Loop through each line in the IP file and format it as 'allow <IP>;'
while IFS= read -r ip; 
        do echo "allow $ip;" >> "$CONF_FILE" 
done < "$IP_FILE"
# deny all other ips
echo "deny all;" >> "$CONF_FILE"
echo "Nginx configuration generated at $CONF_FILE"


# at /etc/nginx/
# generate India_ips.txt using ------------> wget -O India_ips.txt https://www.ipdeny.com/ipblocks/data/countries/in.zone