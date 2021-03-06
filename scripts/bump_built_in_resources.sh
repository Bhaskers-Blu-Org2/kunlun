#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
go get github.com/mjibson/esc
pushd $DIR/../artifacts/builtinroles
  ansible-galaxy install geerlingguy.composer
  ansible-galaxy install geerlingguy.php
  ansible-galaxy install geerlingguy.glusterfs
  ansible-galaxy install geerlingguy.firewall
  ansible-galaxy install geerlingguy.git
  ansible-galaxy install geerlingguy.java
  ansible-galaxy install geerlingguy.mysql
  ansible-galaxy install geerlingguy.redis
  ansible-galaxy install geerlingguy.php-redis
  ansible-galaxy install geerlingguy.php-mysql
  ansible-galaxy install nginxinc.nginx
  ansible-galaxy install geerlingguy.docker
  ansible-galaxy install geerlingguy.kubernetes
  ansible-galaxy install geerlingguy.java
  ansible-galaxy install wikivoks.jmeter
  ansible-galaxy install idealista.tomcat-role
  ansible-galaxy install gantsign.maven
  ansible-galaxy install bjoernalbers.wildfly
  ansible-galaxy install geerlingguy.jenkins
popd

pushd $DIR/../artifacts/builtinroles
  go generate
popd

pushd $DIR/../artifacts/builtinmanifests
  go generate
popd

pushd $DIR/../artifacts/qgraph
  go generate
popd