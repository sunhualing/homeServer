
# homeServer



# FileSystem
mysql
  +--volumes
     +--etc
        +--localtime     -> mounted to /etc/localtime:ro
     +--var
        +--lib
           +--mysql      -> mounted to /var/lib/mysql
piwigo-fpm
  +--volumes
     +--etc
        +--localtime     -> mounted to /etc/localtime:ro
    - /home/hualinsu/piwigo/galleries:/var/www/piwigo/galleries:ro
    - /home/hualinsu/piwigo/upload:/var/www/piwigo/upload:rw
piwigo-data:
  +--volumes
     +--etc
        +--localtime     -> mounted to /etc/localtime:ro


owncloud
  +--volumes
    - ${docker_owncloud_permanent_storage}/data:/var/www/owncloud/data
    - ${docker_owncloud_permanent_storage}/additional_apps:/var/www/owncloud/apps_persistent
    - ${docker_owncloud_permanent_storage}/config:/owncloud
    - ${docker_owncloud_ssl_cert}:/owncloud.cert:ro
    - ${docker_owncloud_ssl_key}:/owncloud.key:ro
    - /etc/localtime:/etc/localtime:ro
