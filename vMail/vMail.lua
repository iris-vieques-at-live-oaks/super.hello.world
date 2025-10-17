
print("Welcome to vMail!")
print("What would you like to do?")
print("'s' for send, 'i' for inbox, 'h', for help")
print("> ")
local input = read()
while input ~= "s" or "i" or "h" do
    print("Invalid command, try again.")
    local input = read()
end
if input == "s" then
    run({}, "/vMail/.files/send.lua")
elseif input == "i" then
    run({}, "/vMail/.files/inbox.lua")
elseif input == "h" then
    run({},  "/vMail/.files/help.lua")
else
    print("Invalid command, try again.")
end
