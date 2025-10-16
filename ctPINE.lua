term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.white)

computer = os.getComputerID()
print("# " .. computer)
modem = peripheral.find("modem")
if rednet.isOpen(modem) == false then
    rednet.open(modem)
else
    paintutils.drawFilledBox(2, 3, 30, 7, colors.white)
    input = read()
end

