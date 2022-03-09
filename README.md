# pooper-docker-compose

Docker Compose configuration for:
* Running Pooper locally
* Developing Pooper
* Building Pooper for production

## How to use this Docker Compose configuration for anything
```shell
mkdir pooper
git clone https://github.com/Maritims/pooper-frontend
git clone https://github.com/Maritims/pooper-api
git clone https://github.com/Maritims/pooper-nginx
git clone https://github.com/Maritims/pooper-docker-compose
sh pooper-docker-compose/create-symlinks.sh
```

## How to run Pooper locally (for development or anything really)
```shell
docker-compose up --build
```

## How to build Pooper for production
Create a file called prod.env with all the necessary environment variables, then run the `build-for-prod.sh` script. For reference check the `sample.env` section.

```shell
sh pooper-docker-compose/build-for-prod.sh
docker-compose push # If you want to push it to a registry.
```

## How to build Pooper for another environment
Have a look at the `build-for-prod.sh` script and `sample.env` section, it's all there.

## sample.env
```shell
API_BASE_URL=https://<insert your domain here>/api
API_CONTAINER_ADDRESS=http://api:8000                   # Do not edit.
API_ROOT_PATH=/api                                      # Do not edit.
API_SECRET_AUTH_KEY=<some really intricate key>
CLIENT_BASE_URL=https://<insert your domain here>
FRONTEND_CONTAINER_ADDRESS=http://frontend              # Do not edit.
MAPBOX_ACCESS_TOKEN=<your mapbox access token>
MARIADB_SERVER=db                                       # Do not edit.
MARIADB_ROOT_PASSWORD=<some really intricate password>
MARIADB_DATABASE=pooper
MARIADB_USER=pooper
MARIADB_PASSWORD=pooper
MARIADB_DATA_DIR=/var/mysql/data                        # Do not edit.
MARIADB_LOG_DIR=/var/mysql/logs                         # Do not edit.
SENDGRID_API_KEY=<your sendgrid api key>
SENDER_EMAIL_ADDRESS=no-reply@<insert your domain here>
SERVER_NAME=<insert your domain here>
SSL_CERTIFICATE_FILE=fullchain1.pem                     # Ensure this matches your SSL certificate file name in the pooper-nginx/ssl directory.
SSL_CERTIFICATE_KEY_FILE=privkey1.pem                   # Ensure this matches your SSL certificate key file in the pooper-nginx/ssl directory.
VAPID_PUBLIC_KEY=<your vapid public key>
VAPID_PRIVATE_KEY=<your vapid private key>
```