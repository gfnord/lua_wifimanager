-- Overclock the CPU to 160Mhz
node.setcpufreq(node.CPU160MHZ)

-- Check if exist configuration file
print("Booting up ESP8266...")

-- Loading reset button code
dofile("reset_conf.lua")

-- Configuring the Wifi Connection
dofile("wifimanager.lua")

-- Do your other stuff down here
