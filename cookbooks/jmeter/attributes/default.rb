default['jmeter']['version'] = '2.11'
default['jmeter']['fetch_url'] = "http://mirror.sdunix.com/apache//jmeter/source/apache-jmeter-#{ node['jmeter']['version'] }_src.tgz"
default['jmeter']['root'] = '/usr/sbin'
default['jmeter']['tarball'] = "apache-jmeter-#{ node['jmeter']['version'] }_src.tgz"
default['jmeter']['dir'] = "apache-jmeter-#{ node['jmeter']['version'] }"