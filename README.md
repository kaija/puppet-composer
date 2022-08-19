# puppet-composer
Puppet server composer



## Quick Start

### setup puppet server

```
curl -O https://raw.githubusercontent.com/kaija/puppet-composer/main/bootstrap.sh

sudo bash bootstrap.sh
```


### restart puppet server

```
cd /etc/puppetlabs
docker-compose down && docker-compose up -d
```

## Guide

### folder structure

```
/etc/puppetlabs/
├── bin/
│   ├── puppet_node_classifier     # the puppet hostname parser
│   └── app_alias.json             # map the application alias to origin module name
├── cluster.conf.d
│   └── xxx.json                   # regex map your hostname to cluster attr
├── hieradata/                     # put your hieradata here
├── hiera.yaml                     # the hieradata hierachy order
├── modules/
│   ├── main                       # main branch puppet module
│   ├── beta                       # beta branch puppet module
│   └── production                 # production branch puppet module
├── secrets/                       # put your secret file here
...                                # the reset folders are created by puppetserver, don't touch it unless you know what to do.
```


## Appendix


### install docker in ubuntu

```
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

curl -L -o docker-compose https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-linux-x86_64
chmod +x docker-compose
sudo mv docker-compose /usr/local/bin/

```


### install puppet-agent in ubuntu
```
curl -O https://apt.puppet.com/puppet7-release-jammy.deb
dpkg -i puppet7-release-jammy.deb
apt update
apt install -y puppet-agent
```
