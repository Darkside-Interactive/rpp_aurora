local a = 10

function onPlayerJoin ()
    local player = source
    
    outputChatBox("����� ���������� , " .. getPlayerName(player) .. "!",player)

    if IsPlayerAdmin(player) then
        outputChatBox("����� ����� !" , admin)
    end
end

AddEventHandler("onPlayerJoin", getRootElement(), onPlayerJoin)