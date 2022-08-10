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
