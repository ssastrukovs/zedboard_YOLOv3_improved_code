#!/usr/bin/expect

spawn sftp root@192.168.0.106
expect "root@192.168.0.106's password: "
send "root\n"
expect "Permission denied, please try again."
send "root\n"
expect "sftp>"

for {set COUNT 0} {$COUNT <= 999999} {incr COUNT} {
send "get /media/yolov3_deploy/result.jpg /home/savva/Desktop\n"
puts "\n$COUNT"
expect "sftp>"
sleep 1
}
send "exit\n"
interact
