Citizen.CreateThread(function()
    while true do 
        local player = GetPlayerPed(-1)
        Citizen.Wait(1*1000)

        SetDiscordAppId(Config.ClientID)

        -- Player is on Street...
        SetRichPresence(GetPlayerName(PlayerId()) .. " ist auf "..GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player)))))

        SetDiscordRichPresenceAsset("big")
        SetDiscordRichPresenceAssetText(GetPlayerName(PlayerId()))

        SetDiscordRichPresenceAssetSmall("small")
        SetDiscordRichPresenceAssetText("Health: "..GetEntityHealth(player) -100)
    end
end)