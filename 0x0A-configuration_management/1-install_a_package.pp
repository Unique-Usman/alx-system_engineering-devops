# a Puppet that install flask using pip3

package { 'install flask using pip3':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3',
}
