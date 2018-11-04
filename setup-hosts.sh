
#azure vm list-ip-address  | grep -v Group | grep data: | grep -ve "----" | awk -F' ' '{print $3 "  " $4}' >> hosts

#sed -e "s/myhost-hdp-01/myhost-hdp-01 1221212/g" hosts
hosts=`azure vm list-ip-address  | grep -v Group | grep data: | grep -ve "----" | awk -F' ' '{print $3 "***" $4}' `
echo $var

for h in $hosts;
  do
    echo "$h   mon IP"
  done