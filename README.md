#HomeServer

This is an homeServer config, to setup the piwigo and the owncloud.
Data must be stored on a volume.

Use a nginx as a front, and distribute the http request to the piwigo and owncloud server

Edit this `docker-compose.yml`,enter your config  and launch with the command `$ docker-compose up -d `

'
     server {                                                                   
       listen 80;                                                               
       server_name owncloud.ourlab.xin;                                         
       location / {                                                             
         proxy_pass http://localhost:11380;                                     
       }                                                                        
     }                                                                          
     server {                                                                   
       listen 80;                                                               
       server_name piwigo.ourlab.xin;                                           
       location / {                                                             
         proxy_pass http://localhost:11280;                                     
       }                                                                        
     }              
     
'
After db initialization (first launch), environment variables can me removed.



