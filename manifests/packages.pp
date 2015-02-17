# = Class: haproxy::packages
#
# - Install required packages
#
class haproxy::packages(
)
{
  $haproxy_packages = [ 'haproxy',
                      ]

  ### Default Packages to install
  package { $haproxy_packages:
    ensure => installed,
  }
}
