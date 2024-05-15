#!/usr/bin/env bash
file { 'ect/ssh/ssh_config':
  ensure  => present,
  owner   => 'ubuntu',
  group   => 'ubuntu', 
  mode    => '0600',
  content => "\
# SSH client configuration

# Default settings
Host *
    # Disable password authentication
    PasswordAuthentication no

# Configuration for the server you want to connect to
Host 524063-web-01
    # Specify the private key file
    IdentityFile ~/.ssh/school
    HostName 54.165.109.213
    User ubuntu
",
}
