#!/usr/bin/env bash

file { 'ect/ssh/ssh_cofig':
	ensure  => present,
  
  content => "

	#SSH client configuration
	Host*
	IdentityFile ~/.ssh/school
	passwordAuthentication no
	",
}
