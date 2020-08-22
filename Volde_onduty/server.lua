local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP", "Volde_onduty")
vRPclient = Tunnel.getInterface("vRP","Volde_onduty")




RegisterCommand("onduty", function(source)
	local user_id = vRP.getUserId({source})
	local _source = source
	if vRP.hasGroup({user_id,"PolitiBetjent"}) then
		TriggerClientEvent('onduty', source, true)
	else
		TriggerClientEvent('ingenadgang', source)
	end
end)



RegisterCommand("offduty", function(source)
	local user_id = vRP.getUserId({source})
	local _source = source
	if vRP.hasGroup({user_id,"police"}) then
		TriggerClientEvent('offduty', source, false)
	else
		TriggerClientEvent('ingenadgang', source)
	end
end)

RegisterCommand("onevent", function(source)
	local user_id = vRP.getUserId({source})
	local _source = source
	if vRP.hasGroup({user_id,"eventmedarbejder"}) then
		TriggerClientEvent('offduty', source, false)
	else
		TriggerClientEvent('ingenadgang', source)
	end
end)

RegisterCommand("offevent", function(source)
	local user_id = vRP.getUserId({source})
	local _source = source
	if vRP.hasGroup({user_id,"eventmedarbejder"}) then
		TriggerClientEvent('offduty', source, false)
	else
		TriggerClientEvent('ingenadgang', source)
	end
end)
