name 'webserver'

description 'Webservers for chipotle frontend'
run_list 'recipe[chipotle]','recipe[apache2]'