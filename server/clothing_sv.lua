local QBCore = exports['qb-core']:GetCoreObject()



function GetPlayerGender(source)
    
    local playerPed = GetPlayerPed(source)
    local genderHash = GetEntityModel(playerPed)

if genderHash == GetHashKey("mp_f_freemode_01") then
        return "female"
    elseif genderHash == GetHashKey("mp_m_freemode_01") then
        return "male"
    else
        return "unknown" --  not working for ped models, support for our non binary friends i guess
    end
end

QBCore.Functions.CreateUseableItem("era_pants", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "pant", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_top", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "shirt", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_chains", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "chains", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_mask", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "mask", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_kevlar", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end

    TriggerClientEvent('eraoutfits:client:switch', source, "kevlar", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_bracelet", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "bracelet", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_shoes", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end

    TriggerClientEvent('eraoutfits:client:switch', source, "shoes", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_decal", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end

    TriggerClientEvent('eraoutfits:client:switch', source, "decals", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_glasses", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)

    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end

    TriggerClientEvent('eraoutfits:client:switch', source, "glasses", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_watch", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "watch", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_para", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)

    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    
    TriggerClientEvent('eraoutfits:client:switch', source, "bags", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_hat", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local IsPed = GetPlayerGender(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)
    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end

    TriggerClientEvent('eraoutfits:client:switch', source, "hat", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_ears", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)

    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "ears", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

QBCore.Functions.CreateUseableItem("era_outfit", function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local progressActive = lib.callback.await('eraoutfits:IsProgressActive', source)

    if IsPed == "unknown" or progressActive then
        if IsPed == "unknown" then
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.pederror, "error")
        else
            TriggerClientEvent('QBCore:Notify', source, Locales.notif.busy, "error")
        end
        return 
    end
    TriggerClientEvent('eraoutfits:client:switch', source, "outfit", item)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
    Player.Functions.RemoveItem(item.name, 1, item.slot)
end)

local DifferentItems = {
    ['pant'] = "era_pants",
    ['bags'] = "era_para",
    ['decals'] = "era_decal",

}

RegisterNetEvent('eraoutfits:server:receiveclothes')
AddEventHandler('eraoutfits:server:receiveclothes', function(type, ID, Color)
    local Player = QBCore.Functions.GetPlayer(source)


    if DifferentItems[type] then
        item = DifferentItems[type]
    else
        item = "era_"..type
    end
    local newItemInfo = {
        id = ID,
        color = Color,
        description = "id: "..ID.."color:"..Color
    }
    if item then
       -- Player.Functions.AddItem(item, 1, nil, info)
        exports.ox_inventory:AddItem(source, item, 1, newItemInfo) 
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item], "add")
    else 
        print("ERROR : NO ITEM FOUND")   
    end

end)
  
  
RegisterNetEvent('eraoutfits:server:receiveshirt')
AddEventHandler('eraoutfits:server:receiveshirt', function(topId, TopColor, shirtId, shirtColor, glovesId, glovesColor)
    local Player = QBCore.Functions.GetPlayer(source)
    local newItemInfo = {
        id = topId,
        color = TopColor,
        idshirt = shirtId,
        colorshirt = shirtColor,
        idgloves = glovesId,
        colorgloves = glovesColor,
    }



        --Player.Functions.AddItem('era_top', 1, nil, info)
        exports.ox_inventory:AddItem(source, 'era_top', 1, newItemInfo) 
        --TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["era_top"], "add")
    end)

    RegisterNetEvent('eraoutfits:server:receiveoutfit')
    AddEventHandler('eraoutfits:server:receiveoutfit', function(topDrawable, topTexture, underDrawable, underTexture, glovesDrawable, glovesTexture, kevlarDrawable, kevlarTexture, shoesDrawable, shoesTexture, chainsDrawable, chainsTexture, decalsDrawable, decalsTexture, maskDrawable, maskTexture, pantsDrawable, pantsTexture, bagsDrawable, bagsTexture)
        local Player = QBCore.Functions.GetPlayer(source)
   
    local newItemInfo = {
        idtop = topDrawable,
        colortop = topTexture,
        idshirt = underDrawable,
        colorshirt = underTexture,
        idgloves = glovesDrawable,
        colorgloves = glovesTexture, -- Top
        idkevlar = kevlarDrawable, 
        colorkevlar = kevlarTexture, --Kevlar 
        idshoes = shoesDrawable,
        colorshoes = shoesTexture, --Shoes
        idchains = chainsDrawable,
        colorchains = chainsTexture, --Chains
        iddecal = decalsDrawable,
        colordecal = decalsTexture, --Decals
        idmask = maskDrawable, 
        colormask = maskTexture, --Mask
        idpants = pantsDrawable, 
        colorpants = pantsTexture, --Pants
        idbags = bagsDrawable, 
        colorbags = bagsTexture, --Bags
    }
    
            exports.ox_inventory:AddItem(source, 'era_outfit', 1, newItemInfo)
            --Player.Functions.AddItem('era_outfit', 1, nil, info)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["era_outfit"], "add")
end)
