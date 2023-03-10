local QBCore = exports['qb-core']:GetCoreObject()
local PDWatch = false

function QBCore.Functions.HasItem(item)
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
        if result then
            return true
        end
        return false
    end, item)
    return false
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(10)
    end
end

RegisterNetEvent('luma-pdwatch:trigger', function()
    QBCore.Functions.Progressbar("putonpdwatch", "Equipting PD Watch", 5000, false, true, {
	}, {}, {}, {}, function()
		local ped = PlayerPedId()
            exports['ps-hud']:qbhudcompass()
	end)
end)