# FlowweBase
#### Docker compose for Flowwe Server side back-end, mainly created for easy setup.

- All the services can be up and running in 10 min, from a bare Linux install.
- Most of the services have native support for clustering.


## Installation

1: install Docker & Docker compose (Just working sample, adjust to your requirements and versions)

```
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.28.1/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
```

2: Check docker-compose
```
docker-compose --version
```

3: Clone the FlowwBase
```
git clone https://github.com/timpisti/FlowweBase
```

4: Environments

Set the required environment variables:
```
FLOW_API_KEY=your_api_key_here_xxx 
FLOW_DIR=/home/work
FLOW_DOMAIN=[domain, like www.mydomain.com]
FLOW_ADMIN_EMAIL=[email, like my@email.address]
```
#### ALL of the services described below will use this credentials and properties to setup and run.

5: Start the containers
```
docker-compose up -d
```

6: The directory structure:
On the first run, the directory structure will created automatically:

- [FLOW_DIR]/public - Public webserver root
- [FLOW_DIR]/services/configs - The services config folders by service name
- [FLOW_DIR]/services/datas - The services data folders by service name
- [FLOW_DIR]/services/logs - The services log files by service name

#### The [FLOW_DIR] can be used for full backup & restore

### Conatiners:

1: 
[https://frankenphp.dev/](https://frankenphp.dev/) - The Modern PHP App Server, written in Go

[https://caddyserver.com/](https://caddyserver.com/) - THE ULTIMATE SERVER makes your sites more secure, more reliable, and more scalable than any other solution.

2: 
[https://typesense.org/](https://typesense.org/) - Lightning-fast Open Source Search

3: 
[https://openobserve.ai/](https://openobserve.ai/) - Use object storage and stateless nodes for unlimited scale with zero maintenance

4: 
[https://github.com/tvanro/prerender-alpine](https://github.com/tvanro/prerender-alpine) - Prerender.io: Get Your JavaScript Website Crawled, Indexed and Found

5: 
[https://www.mongodb.com/](https://www.mongodb.com/) - Loved by developers. Built for... db.

6:
[https://www.mysql.com/](https://www.mysql.com/)

7: 
[https://www.phpmyadmin.net/](https://www.phpmyadmin.net/) - Bringing MySQL to the web

### Next steps

- FramkenPHP + Caddy will change to OpenLiteSpeed + Certbot for better performance

