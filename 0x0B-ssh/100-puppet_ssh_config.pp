# Configuring the SSH client using puppet 

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content =>
    "${file('/etc/ssh/ssh_config')}Host myhostname
        HostName ipaddress
        ServerAliveInterval 120
        IdentityFile ~/.ssh/school
        PasswordAuthentication no",
  owner   => 'unique',
  group   => 'unique',
  mode    => '0744'
}

# Explanataion
# I've append the new configurations to the 
# '/etc/ssh/ssh_config' file
