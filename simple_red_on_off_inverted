-- https://pastebin.com/KzBVbJqa
local modem = peripheral.wrap("left")
modem.open(1) 
while true do
local event, modemSide, senderChannel, 
  replyChannel, message, senderDistance = os.pullEvent("modem_message")
if message == "off" then
  redstone.setOutput("top", true)
else
  redstone.setOutput("top", false)
end
end
