ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--    local xPlayer = ESX.GetPlayerFromId(source)
--local FixToolQuantity = xPlayer.getInventoryItem('fixtool').count
-- test if FixToolQuantity > 1 then 
-- action
--end

--RegisterNetEvent(' ')
--AddEventHandler(' ', function()
--
--end)


RegisterNetEvent('buyWeedF')
AddEventHandler('buyWeedF', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceWeedF
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('buyOpiumF')
AddEventHandler('buyOpiumF', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceWeedT
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('buyCokeF')
AddEventHandler('buyCokeR', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCokeF
    xPlayer.removeMoney(price)

end)

RegisterNetEvent('buyMethF')
AddEventHandler('buyMethF', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceMethF
    xPlayer.removeMoney(price)
end)


--RegisterNetEvent('buyCrackF')
--AddEventHandler('buyCrackF', function()
--    local _source = source
--    local xPlayer = ESX.GetPlayerFromId(source)
--    local price = Config.PriceVespa
--    xPlayer.removeMoney(price)
--end)
--[[
RegisterNetEvent('buyVespa')
AddEventHandler('buyVespa', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceVespa
    xPlayer.removeMoney(price)
end)
]]

--[[
RegisterNetEvent('buyBmx')
AddEventHandler('buyBmx', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceBmx
    xPlayer.removeMoney(price)

end)
]]
