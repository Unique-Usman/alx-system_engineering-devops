# a manifest that kills a process named killmenow

exec {'a manifest that kills a process named killmenow.':
  command  => '/usr/bin/pkill -9 killmenow'
}
