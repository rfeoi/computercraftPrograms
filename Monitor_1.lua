-- Clear the Monitor
local attachedMonitor = peripheral.wrap("right")
attachedMonitor.clear()
--# load the touchpoint API http://pastebin.com/pFHeia96
os.loadAPI("touchpoint")

--# intialize a new button set on the top monitor
local t = touchpoint.new("right")
local wither = false

t:add("Wither Farm", nil, 2, 2, 14, 11, colors.red, colors.lime)

--# draw the buttons
t:draw()

while true do
    --# handleEvents will convert monitor_touch events to button_click if it was on a button
    local event, p1 = t:handleEvents(os.pullEvent())
    if event == "button_click" then
        t:toggleButton(p1)
        if p1 == "Wither Farm" then
            if wither then
                wither = false
                peripheral.call("top", "transmit", 1, 1, "off")
            else
                wither = true
                peripheral.call("top", "transmit", 1, 1, "on")
            end
        end
    end
end