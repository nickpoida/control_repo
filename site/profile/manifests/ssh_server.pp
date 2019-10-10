class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4qX6UzeO2B0dc9IMMb4f+ruwUZAQZFnxMdmQ9e6VvoNPEYqa6zbyHICTCOnvou9RPzsONWdq/fxMFgXgz2hJdynJVEPqCgRXPA+c/I0HJ9Sc/nUuXf7tuSOKTA/Xlzdf/DjskUA2RltalnhflddV9yycDEsxpWped1+fvPGdbKrlkni3QbOkGoW322NHBawh/0tBfuspZ7IkVM7fSNtQYWcUK64ZVYMeQtsdjJ1O1UnrZm337xSykDG57KDbx+cKFJkyrgyTdqkrJs2qlRNhOjHtZfaU9c1i1SkksWuWYPvKX92z8rSCDxNYpu37IKJu7IsyAPa8XkIeMVEXTpk1r',
	}  
}
