# Docker & Automatic SSL = 😍
This is a simple working example how to automatically secure your 
NodeJS / whatever application using a NGINX reverse proxy and [Certbot](https://certbot.eff.org/). 

This makes use of the [automatic NGINX proxy](https://github.com/jwilder/nginx-proxy) 
and [letsencrypt-nginx-proxy-companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion).

## How to use

**Development:**
- Clone or download this repo
- **Modify** the `.env` located in `.env.example` to match your environment.  
- Run: `docker-compose up --build`

**Production:**
- Clone or download this repo
- **Modify** the `.env` located in `.env.example` to match your environment.  
- Run: `docker-compose -f docker-compose.yml -f docker-compose.production.yml up --build` 
<sub><sub>I would recommend [this](https://www.digitalocean.com/docs/marketplace/docker/) Digital Ocean droplet😉</sub></sub>

## DHParam Generation
~~By default the generation of the dhparam is disabled, the NGINX proxy will fall back to a default one. 
To bypass this, run the command as documented [here](dhparam/README.md).~~

There is a default `dhparam-2048.pem` provided by this repo, as a workaround for the lack of a working environment 
variable provided by the auto-NGINX proxy. 

If you only want to try out this demo, you could use the key provided. Otherwise it's highly recommended to
follow the instructions [here](dhparam/README.md) and generate a new key.

## Todo
- Add support for all the available environment variable provided [here](https://github.com/jwilder/nginx-proxy/wiki/List-of-Supported-Environment-Variables). 
