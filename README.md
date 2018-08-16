# lua_wifimanager
It's a wifi manager for Lua firmware running on NodeMCU/ESP8266. 
Simpler than WifiManager from Tzapu (https://github.com/tzapu/WiFiManager) but does the same thing.

After uploading the files to you NodeMCU, it will boot and open an Wifi with SSID ESP_{ChipID} and with the password 'passw0rd'.

Connect to the device and open http://192.168.4.1 to have access to Wifi Configuration page.

Input the SSID and password of the wifi you want to connect and click on Save button.

The device will connect, store the credentials in the device. On next boot it will look for this file and auto connect on the same network previously configured.

Also it's included a code for a reset button that can be connected on D7 pin, to remove the credentials file and reboot the device, returning it to AP mode.
