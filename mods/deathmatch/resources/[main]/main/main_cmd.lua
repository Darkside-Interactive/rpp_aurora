function onMessageTestbyDan1K(playerSource)
    if playerSource then
        local a = 10
        outputChatBox("Hello, " .. getPlayerName(playerSource) .. "!", playerSource)
        if isPlayerAdmin(playerSource) then
            outputChatBox("You are an admin! The value of A is: " .. a .. "!", playerSource)
        end
        outputDebugString("onMessageTestbyDan1K was called by " .. getPlayerName(playerSource))
    end
end
addCommandHandler("/test", onMessageTestbyDan1K)