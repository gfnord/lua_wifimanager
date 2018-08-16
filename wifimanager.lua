-- check if file credentials.lua exists on device
if file.open("credentials.lua") then
  print("Reading wifi configuration from file")
  print(file.read())
  file.close()
  dofile("credentials.lua")
  -- file exists, running on station mode
  dofile("station_mode.lua")
else
  -- file don't exists, runnning on ap mode
  print("Credentials file not found, going into AP mode")
  dofile("ap_mode.lua")
end
