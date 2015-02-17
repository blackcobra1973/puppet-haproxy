# = Class: haproxy::service
#
# Create haproxy Services
#
class haproxy::service
{

  if $haproxy::haproxy_service
  {
    #### Enable the services
    service { 'haproxy':
      ensure  => running,
      enable  => true,
      require => Package[$haproxy::packages::haproxy_packages],
    }
  }
#  else
#  {
    #### Disable the services
#    service { 'haproxy':
#      ensure  => stopped,
#      enable  => false,
#      require => Package[$haproxy::packages::haproxy_packages],
#    }
#  }
}
