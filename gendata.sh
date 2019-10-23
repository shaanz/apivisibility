while true;
 do
   curl -X POST http://52.76.123.216/api/nf1;
   curl -X GET http://52.76.123.216/api/nf1;
   curl -X OPTIONS http://52.76.123.216/api/nf1;
   curl -X POST http://52.76.123.216/api/errorfunction
   curl -X GET http://52.76.123.216/
   curl -X OPTIONS http://52.76.123.216/list
 done
