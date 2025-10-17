local inventory = {peripheral.find(peripheral.hasType("inventory"))}

for k, v in ipairs(inventory) do
    print(k, v)
end
