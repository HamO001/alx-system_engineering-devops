# This code kils a process named killmenow using the pkill

exec { 'killmenow':
  command  => 'usr/bin/pkill killmenow',
  provider => 'shell',
  returns  => [0, 1],
}
