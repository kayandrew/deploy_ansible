#! /bin/bash

ansible all -m yum_repository -b -a 'name=EX294_BASE description="EX294 base software" baseurl=http://content.example.com/rhel8.0/x86_64/dvd/BaseOS/ enabled=yes gpgcheck=yes gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPM-GPG-KEY-centosofficial'
ansible all -m yum_repository -b -a 'name=EX294_STREAM description="EX294 stream software" baseurl=http://content.example.com/rhel8.0/x86_64/dvd/Appstream/ enabled=yes gpgcheck=no gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPM-GPG-KEY-centosofficial'
