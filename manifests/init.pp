# init file for HAProxy Installation
#
class haproxy (
)
{

  ### Declaring calculated variables
  anchor  { 'haproxy::start': }->
  class   { 'haproxy::packages': }->
  anchor  { 'haproxy::end': }
}
