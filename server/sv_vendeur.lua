ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterNetEvent('nknife')
AddEventHandler('nknife', function() 
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getWeapon('WEAPON_KNIFE') then 
        TriggerClientEvent('esx:showNotification', source, 'Tu en as déjà un sur toi !')
    elseif not xPlayer.getWeapon('WEAPON_KNIFE') then 
        xPlayer.removeMoney(30)
        xPlayer.addWeapon('WEAPON_KNIFE')
        TriggerClientEvent('esx:showNotification', source,'Fais en bonne usage !')
    end 
end)
RegisterNetEvent('n:switchblade')
AddEventHandler('n:switchblade', function() 
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getWeapon('WEAPON_SWITCHBLADE') then 
        TriggerClientEvent('esx:showNotification', source, 'Tu en as déjà un sur toi !')
    elseif not xPlayer.getWeapon('WEAPON_SWITCHBLADE') then 
        xPlayer.removeMoney(30)
        xPlayer.addWeapon('WEAPON_SWITCHBLADE')
        TriggerClientEvent('esx:showNotification', source,'Fais en bonne usage !')
    end 
end)
RegisterNetEvent('n:knuckle')
AddEventHandler('n:knuckle', function() 
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getWeapon('weapon_knuckle') then 
        TriggerClientEvent('esx:showNotification', source, 'Tu en as déjà un sur toi !')
    elseif not xPlayer.getWeapon('weapon_knuckle') then 
        xPlayer.removeMoney(30)
        xPlayer.addWeapon('weapon_knuckle')
        TriggerClientEvent('esx:showNotification', source,'Fais en bonne usage !')
    end 
end)
RegisterNetEvent('n:glock')
AddEventHandler('n:glock', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getWeapon('WEAPON_COMBATPISTOL') then 
        TriggerClientEvent('esx:showNotification', source, 'Tu en as déjà un sur toi !')
    elseif not xPlayer.getWeapon('WEAPON_COMBATPISTOL') then
        xPlayer.removeMoney(13000) 
        xPlayer.addWeapon('WEAPON_COMBATPISTOL', 20)
        TriggerClientEvent('esx:showNotification', source,'Fais en bonne usage !')
    end 
end)