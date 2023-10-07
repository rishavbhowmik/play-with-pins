gpio mode 0 out
gpio mode 2 in

# Connect GPIO.0 & GPIO.2
# 
#              *-------*
#              |       |
# ....-+-------+-------+-------+---....
#    GPIO3   GPIO2   GPIO0    GND

gpio write 0 1
gpio read 0
# output: 1
gpio read 2
# output: 1

gpio write 0 0
gpio read 0
# output: 0
gpio read 2
# output: 0

# Disconnect GPIO.0 & GPIO.2
# 
#              *-<   >-*
#              |       |
# ....-+-------+-------+-------+---....
#    GPIO3   GPIO2   GPIO0    GND

gpio write 0 1
gpio read 0
# output: 1
gpio read 2
# output: 0

gpio write 0 0
gpio read 0
# output: 0
gpio read 2
# output: 0