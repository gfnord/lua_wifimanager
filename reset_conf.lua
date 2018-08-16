-- Config some parameters
local button_pin = 7

local pin = 4            --> GPIO2
local value = gpio.HIGH

-- init GPIO pin properly
-- some hardware might not need the "gpio.PULLUP" part, mine does
gpio.mode(button_pin, gpio.INT, gpio.PULLUP)

-- Function toggles LED state
function toggleLED ()
   if value == gpio.LOW
   then
        value = gpio.HIGH
   else
       value = gpio.LOW
   end

    gpio.write(pin, value)
end

-- define a callback function named "pin_cb", short for "pin callback"
function pin_cb()
    print("Reset config button pressed. Removing credentials file and rebooting the device. ")
    toggleLED()
    file.remove("credentials.lua")
    node.restart()
end

gpio.mode(pin, gpio.OUTPUT)
gpio.write(pin, value)

-- register a button event
-- that means, what's registered here is executed upon button event "up"
gpio.trig(button_pin, "up", pin_cb)