#!/usr/bin/env bash
# using puppet to make changes to our configuration file

file { 'ect/ssh/ssh_cofig':
	ensure  => present,
  
  content => "

	#SSH client configuration
	Host*
	IdentityFile ~/.ssh/school
	passwordAuthentication no
	",
}
