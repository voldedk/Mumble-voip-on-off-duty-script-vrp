vRPdv = {}
Tunnel.bindInterface("Volde_onduty",vRPdv)
Proxy.addInterface("Volde_onduty",vRPdv)
PMserver = Tunnel.getInterface("Volde_onduty","Volde_onduty")
vRPserver = Tunnel.getInterface("vRP","Volde_onduty")
vRP = Proxy.getInterface("vRP", "Volde_onduty")



RegisterNetEvent("onduty")
AddEventHandler("onduty", function()
	exports["rp-radio"]:GivePlayerAccessToFrequencies(8, 9)
	TriggerEvent("pNotify:SendNotification",{text = "Du er nu on duty på politi radioen, du har også adgang til at tage fat i en ems på deres radio",type = "error",timeout = (5000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end)

RegisterNetEvent("offduty")
AddEventHandler("offduty", function()
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(8, 9)
	TriggerEvent("pNotify:SendNotification",{text = "Du er nu gået off duty på radioen",type = "error",timeout = (5000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})

end)

RegisterNetEvent("ingenadgang")
AddEventHandler("ingenadgang", function()
	TriggerEvent("pNotify:SendNotification",{text = "Du har ikke adgang til dette",type = "error",timeout = (5000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})

end)


RegisterNetEvent("onevent")
AddEventHandler("onevent", function()
	exports["rp-radio"]:GivePlayerAccessToFrequencies(10)
	TriggerEvent("pNotify:SendNotification",{text = "Du er nu adgang til event radioen",type = "error",timeout = (5000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end)

RegisterNetEvent("offevent")
AddEventHandler("offevent", function()
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(10)
	TriggerEvent("pNotify:SendNotification",{text = "Du har ikke længere adgang til event radioen",type = "error",timeout = (5000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})

end)
