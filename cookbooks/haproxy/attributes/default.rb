default['haproxy']['incoming_port'] = '80'
default['haproxy']['balance_algorithm'] = 'roundrobin'

## Maxconn depends largely on the app server. No point increasing it if app server cant handle that much concurrency.
## ::Gem:: http://stackoverflow.com/questions/8750518/difference-between-global-maxconn-and-server-maxconn-haproxy
default['haproxy']['member_max_connections'] = '16'
default['haproxy']['member_min_connections'] = '2'

default['haproxy']['health_check_interval'] = '20000'
default['haproxy']['enable_admin'] = true

## Add your hosts here. Like:
# default['haproxy']['hosts'] = ['192.168.10.10', '192.168.10.20']
default['haproxy']['hosts'] = ['172.31.27.77']
default['haproxy']['admin_password'] = 'admin'
