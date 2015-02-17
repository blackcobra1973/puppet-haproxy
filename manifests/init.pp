# init file for HAProxy Installation
#
class haproxy (
  $haproxy_service  = true,
)
{

  ### Declaring calculated variables
  anchor  { 'haproxy::start': }->
  class   { 'haproxy::packages': }->
  class   { 'haproxy::service': }->
  anchor  { 'haproxy::end': }
}
