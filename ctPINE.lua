term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.white)

local computer = os.getComputerID()
print("# " .. computer)
local modem = peripheral.find("modem")
if rednet.isOpen(modem) == false then
    rednet.open(modem)
else
    print("What do you wish to do?")
    print("-h for host, -l for lookup, -c for connect, -s for send")
    print("# ")
    local input = read()
    if input == "-h" then
        print("Which protocol do you wish to follow?")
        print("-c for chat, -m for e-mail")
        print("# ")
        local input = read()
        if input == "-c" then
            print("What do you wish to call the host?")
            print("# ")
            local input = read()
            host("chat", input)
            print("Press '!' to stop hosting " .. input .. ".")
            local input = read()
            while input ~= ("!") do
                print("Invalid.")
            break end
        end
    end
end

