ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('hakteklader', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('hakteklader', 1)
    xPlayer.setInventoryItem('civilklader', 1)
    TriggerClientEvent('foreshakteklader', source)
end)

ESX.RegisterUsableItem('operationsklader', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('opperationsklader', 1)
    xPlayer.setInventoryItem('civilklader', 1)
    TriggerClientEvent('foresoperationsklader', source)
end)



ESX.RegisterUsableItem('civilklader', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('civilklader', 1)
    TriggerClientEvent('forescivilklader', source)
end)