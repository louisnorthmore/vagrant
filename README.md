vagrant-debian-web
==================

Vagrant box for local web development.

Nginx, PHP5, MySQL

### Requirements

Virtualbox

### Info

By default the box starts up on 10.20.48.69 you can edit this in Vagrantfile if needed.
This is designed to run in a folder in your web root. It will serve files in the same folder via Nginx.

Set an entry in your hosts file to the ip to serve the files.

This could be easily scripted.

You can connect to MySQL over SSH. User: root Password: root


### Basic Vagrant Commands

vagrant up - Start the box
vagrant halt - Stop the box
vagrant ssh - Connect to the box via SSH
