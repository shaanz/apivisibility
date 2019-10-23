# apisec
The project displays running a sample nodejs app and elk dashboard in container environment 
Together the samples can be used to demonstrate or used for API Management demos. 

Currently the API server only hosts two endpoints 
/ and /api/nf1.  

/nf1 is coded to randomly generate error

APIDemo image
1) docker run  --name apidemo1 -d -p 3000:3000 sbacker/apidemo
2) curl http://localhost:3000/api/nf1  to access the app 

ELK Dashboard 
1) 


<b>Build Container Images </b> 
Incase you want to extend the API and extend the code 
1) Copy the Dockerfile and exp_api.js in the same folder 
2) execute  docker build -t apidemo


<b> Deploy APIdemo image and ELK Dashboard </b>


