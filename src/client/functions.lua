ESX = exports['Framework']:getSharedObject()

function SendNUIPlayer(source)
    SetNuiFocus(true, true)
    if DEBUG_MODE then print("Open SpanwSelector") end
    SendNUIMessage({ action = "showSpawnSelector" })
    SetTimecycleModifier("hud_def_blur")
    DisplayRadar(false)
end

function StopNUIPlayer(source)

    SetNuiFocus(false, false)
    SendNUIMessage({ action = "hideSpawnSelector" })
    ClearTimecycleModifier()
    DisplayRadar(true)
end