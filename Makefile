
update-hosts:
	azure vm list-ip-address  | grep -v Group | grep data: | grep -ve "----" | awk -F' ' '{print $3 "  " $4}' > hosts
