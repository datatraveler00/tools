#!/usr/bin/expect -f
set timeout 30
set ipaddress [lindex $argv 0]
set login_password [lindex $argv 1]
spawn ssh "root@$ipaddress"
expect "*assword:*"
send "$login_password\r"
expect "Last login*"
send "alias vi='vim'\r"
#send "cd /workspace\r"
send "clear\r"
expect "*" interact
