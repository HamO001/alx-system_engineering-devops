# This code kils a process named killmenow using the pkill

exec { 'kill_killmenow_process':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path    => '/usr/bin:/bin',  # Add other paths if necessary
}
