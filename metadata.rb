# encoding: utf-8

name             'kafka8'
maintainer       'Mathias Söderberg'
maintainer_email 'mths@sdrbrg.se'
license          'Apache 2.0'
description      'Installs and configures a Kafka broker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'kafka8::source', 'Downloads, compiles and installs Kafka from source releases'
recipe 'kafka8::binary', 'Downloads, extracts and installs Kafka from binary releases'
recipe 'kafka8::zookeeper', 'Setups standalone ZooKeeper instance using the ZooKeeper version that is bundled with Kafka'

recommends 'java', '~> 1.22'

%w(centos fedora debian ubuntu).each do |os|
  supports os
end
