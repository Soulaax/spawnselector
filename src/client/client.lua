
RegisterNetEvent("slx:spawnselector:open", function()
    SendNUIPlayer()
end)

RegisterNUICallback("teleport", function(data, cb)
    local pos = data.pos
    DoScreenFadeOut(500)
    Wait(500)
    if DEBUG_MODE then print("Teleport to: " .. pos.x .. ", " .. pos.y .. ", " .. pos.z) end
    SetEntityCoords(PlayerPedId(), pos.x, pos.y, pos.z)
    SetEntityHeading(PlayerPedId(), pos.h)
    Wait(1500)
    DoScreenFadeIn(500)
    StopNUIPlayer()
    cb("ok")
end)

if DEBUG_MODE then
    RegisterCommand("closeui", function()
        StopNUIPlayer()
        print("Close SpawnSelector")
    end, false)

    RegisterCommand("openui", function()
        SendNUIPlayer()
    end, false)
end