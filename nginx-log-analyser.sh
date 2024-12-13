#! /usr/bin/bash

awk '{print $1 " " $7 " " $9}' nginx-access.log > ip_path_status.log

# awk -F'"' '{print $2}' nginx-access.log # user agent info

TOP_5_IP=$(awk '{print $1}' ip_path_status.log | sort | uniq --count | sort --numeric-sort --reverse | head -n 5)
TOP_5_PATH=$(awk '{print $2}' ip_path_status.log | sort | uniq --count | sort -nr | head -n 5)
TOP_5_CODES=$(awk '{print $3}' ip_path_status.log | sort | uniq --count | sort -nr | head -n 5)

echo "Top 5 IP addresses with the most requests:"
echo "$TOP_5_IP" | awk '{print $2 " - " $1 " requests"}'
echo ""
echo "Top 5 most requested paths:"
echo "$TOP_5_PATH" | awk '{print $2 " - " $1 " requests"}'
echo ""
echo "Top 5 response status codes:"
echo "$TOP_5_CODES" | awk '{print $2 " - " $1 " requests"}'
