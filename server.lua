local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("pd_compass", function(src, item)
	local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('luma-pdwatch:trigger', src)
end)