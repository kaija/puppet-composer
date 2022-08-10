#!/bin/bash
puppet config set node_terminus "exec" --section master
puppet config set external_nodes "/etc/puppetlabs/bin/puppet_node_classifier" --section master
