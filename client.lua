local QBCore = exports['qb-core']:GetCoreObject()

function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function UnloadAnimDict(dict)
    while (HasAnimDictLoaded(dict)) do
        RemoveAnimDict(dict)
        Wait(5)
    end
end

function LoadModel(model)
    while (not HasModelLoaded(model)) do
        RequestModel(model)
        Wait(5)
    end
end

function UnloadModel(model)
    while (HasModelLoaded(model)) do
        SetModelAsNoLongerNeeded(model)
        Wait(5)
    end
end

function DestroyProp(entity)
    SetEntityAsMissionEntity(entity)
    Wait(5)
    DetachEntity(entity, true, true)
    Wait(5)
    DeleteObject(entity)
end

function PlayAnimation(dict, anim)
    local book = 'prop_novel_01'
    local bone = GetPedBoneIndex(PlayerPedId(), 6286)
    local player = PlayerPedId()
    CreateThread(function()
        LoadAnimDict(dict, 100)
        LoadModel(book, 100)
        entity = CreateObject(GetHashKey(book), GetEntityCoords(player), true)
        AttachEntityToEntity(entity, player, bone, 0.15, 0.03, -0.065, 0.0, 180.0, 90.0, false, false,
            false, false, 2, true)
        TaskPlayAnim(player, dict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
        Wait(5000)
        DestroyProp(entity)
        ClearPedTasks(player)
    end)
end

RegisterNetEvent('bostra-powerups:client:stamina')
AddEventHandler('bostra-powerups:client:stamina', function()
    QBCore.Functions.Notify("You hurry through the pages, and find a few tips on how to improve your stamina.", "success")
    PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Stamina'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:strength')
AddEventHandler('bostra-powerups:client:strength', function()
    QBCore.Functions.Notify("You gaze at the sculpted statuesque figures on the cover, and feel a surge of strength.",
        "success")
        PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Strength'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:crafting')
AddEventHandler('bostra-powerups:client:crafting', function()
    QBCore.Functions.Notify("You read up on some nifty crafting recipes, and feel more confident in your crafting.",
        "success")
        PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Crafting'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:hitman')
AddEventHandler('bostra-powerups:client:hitman', function()
    QBCore.Functions.Notify(
    'You scan the handwritten notes of a professional Hitman, attuning yourself to the art of the kill.', "success")
    PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Hitman'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:criminal')
AddEventHandler('bostra-powerups:client:criminal', function()
    QBCore.Functions.Notify("You read up on some slick heist tips, and feel more confident in your criminal abilities.",
        "success")
        PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Criminal'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:hunting')
AddEventHandler('bostra-powerups:client:hunting', function()
    QBCore.Functions.Notify("You mosey your way through some hunting tips, gathering some knowledge along the way.",
        "success")
        PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Hunting'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:searching')
AddEventHandler('bostra-powerups:client:searching', function()
    QBCore.Functions.Notify("You read up on searching tips, look at you Nancy Drew", "success")
    PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Searching'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:mining')
AddEventHandler('bostra-powerups:client:mining', function()
    QBCore.Functions.Notify(
    "You read the latest Mining Team Co Publishing, and feel more confident in your mining abilities.", "success")
    PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Mining'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)

RegisterNetEvent('bostra-powerups:client:hacking')
AddEventHandler('bostra-powerups:client:hacking', function()
    QBCore.Functions.Notify("You found a mainframe manual, and feel more confident in your hacking abilities.", "success")
    PlayAnimation('cellphone@', 'cellphone_text_read_base')
    local skill = 'Hacking'
    exports['mz-skills']:UpdateSkill(skill, 100)
end)


AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
    DestroyProp(entity)
end)