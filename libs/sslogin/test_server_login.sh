#!/usr/bin/expect -f
set timeout 30
set ipaddress [lindex $argv 0]
spawn ssh -i /Users/wangyixiang/project/.id_rsa_wangyixiang wangyixiang@admin.xiaokaxiu.com
expect "*"
send "ssh root@${ipaddress}\n"
expect "Last login*"
send "alias vi='vim'\r"
send "clear\r"
expect "*" interact