# apivisibility
The project displays running a sample nodejs app and elk dashboard in container environment 
Together the samples can be used to demonstrate or used for API Management demos. 

Currently the API server only hosts two endpoints 
/ and /api/nf1.  
/nf1 is coded to randomly generate error

<b>APIDemo image </b>
1) docker run  --name apidemo1 -d -p 3000:3000 sbacker/apidemo
2) curl http://localhost:3000/api/nf1  to access the app 

<b>ELK Dashboard </b>
1) docker run -e MAX_MAP_COUNT=262144 -p 5000:5000 -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk sbacker/elk
2) Incase you update the grok filter for logstash. Restart logstash demon  with command: service logstash restart 
3) Index is preconfigured on ELK image, incase you change it please create a new index

<b> NGINX Image </b> 
You need to procure  license for NGINX+ or use opensource version 


<b> Steps to configure NGINX+ Gateway </b>

1) Enable audit on NGINX+ (sample conf file attached) 
  log_format logstash '$remote_addr - "$api_client_name" [$time_local] "$request" $status $body_bytes_sent "$http_referer"  
  "$http_user_agent" "$http_x_forwarded_for" $apimgmt_environment $apimgmt_definition $apimgmt_entry_point .    
  "$apimgmt_environment_name" "$apimgmt_definition_name" $jwt_claim_sub';
2) Install Filebeat NGIN+ image 
   wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
   echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
   echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
   sudo apt-get update
   sudo apt-get install filebeat
3) Configure Filebeat (sample file attached) 
   1. Edit etc/filebeat/fibeat.yml
   2. add your logstash location  to output.logstash section 
   3. add the location of logfile to filebeat input 
4) Restart filebeat services. service filebeat restart


<b> Generate data </b>
Prereq: curl installed 
1) edit gendata.sh to reflect the correct IP address for server variable
2) sh gendata.sh 


<b>Build Container Images </b> 
Incase you want to extend the API and extend the code 
1) Copy the Dockerfile and exp_api.js in the same folder 
2) execute  docker build -t apidemo





