ESX = nil 

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

local illegalvendeur = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Vendeur Illégale" },
	Data = { currentMenu = "Vendeur", "Test" },
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
			PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local slide = btn.slidenum
			local btn = btn.name
			local check = btn.unkCheckbox
			if btn == "Couteau" then
                TriggerServerEvent('nknife')
            elseif btn == "Papillion" then 
                TriggerServerEvent('n:switchblade')
            elseif btn == "Poing Américain" then 
                TriggerServerEvent('n:knuckle')
            elseif btn == "Glock 17" then 
                TriggerServerEvent('n:glock')
		end
	end,
},
	Menu = {
		["Vendeur"] = {
			b = {
				{name = "Couteau", ask = "~r~30", askX = true},
                {name = "Papillion", ask = "~r~30", askX = true},
                {name = "Poing Américain", ask = "~r~30", askX = true},
                {name = "Glock 17", ask = "~r~13k", askX = true},
			}
		}
	}
}

local vendeur = { { x = 955.29 ,y = -1203.325 ,z = 26.01 } }
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        for k in pairs(vendeur) do
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, vendeur[k].x, vendeur[k].y, vendeur[k].z)

            if dist <= 2 then
                Citizen.Wait(20)
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour parler avec ~r~James")
				if IsControlJustPressed(1,38) then 
                    Citizen.Wait(100)
					CreateMenu(illegalvendeur)
				end
            end
		end
    end 
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("g_m_m_chicold_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    Citizen.Wait(200)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "g_m_m_chicold_01", 955.29 , -1203.325 , 25.01 , 43.1554794, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)