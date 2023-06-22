#!/bin/bash

# Stop the FTP server
Service proftpd stop

# Remove the FTP server package
apt-get purge -y proftpd-basic

# Remove the FTP server configuration files
rm -rf /etc/proftpd

# Remove the FTP server user and group
deluser --remove-home ftp
delgroup ftpgroup

# Remove any remaining FTP server-related files or directories
rm -rf /var/ftp

# Restart the machine
reboot
