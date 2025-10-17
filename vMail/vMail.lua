
print("Welcome to vMail!")
print("What would you like to do?")
print("'s' for send, 'i' for inbox, 'h', for help, 'c' for config")
print("> ")
local input = read()
while input ~= "s" or "i" or "h" or "c" do
    print("Invalid command, try again.")
    local input = read()
end
if input == "s" then
    run({}, "/vMail/.files/send.lua")
elseif input == "i" then
    run({}, "/vMail/.files/inbox.lua")
elseif input == "h" then
    run({},  "/vMail/.files/help.lua")
elseif input == "c" then
    run({}, "/vMail/.files/config.lua")
end
