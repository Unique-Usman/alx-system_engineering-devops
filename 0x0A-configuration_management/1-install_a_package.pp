# a Puppet that install flask using pip3

package { 'install flask using pip3':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3',
}

exec { 'pip install werkzueg':
    command => '/usr/bin/pip3 install werkzeug==2.1.1'
}
