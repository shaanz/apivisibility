server="http://22.76.11.12"
while true;
 do
   curl -X POST $server/api/nf1
   curl -X GET $server/api/nf1;
   curl -X OPTIONS $server/api/nf1;
   curl -X POST $server/api/errorfunction
   curl -X GET $server
   curl -X OPTIONS $server/list
 done
~       
