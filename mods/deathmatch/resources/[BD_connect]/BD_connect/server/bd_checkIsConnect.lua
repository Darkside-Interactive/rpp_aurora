local cfgFile = fileOpen("cfg/MySQL_settings.config")
local someFunctions = require("../additional_functions.lua")
local dbConn = nil

if cfgFile then
    local settings = fileRead(cfgFile,fileGetSize(cfgFile))
    fileClose(cfgFile)

    local config = {}
    for k,v in string.gmatch(settings,"([^=]+)=([^=]+)") do config[k] = v end

    -- print("dbConn = " ... dbConn)
    -- outputDebugString("[Debug lvl] dbConn = " .. config.database)

    local dbConn = dbConnect("mysql","dbname="..config.database,";host="..config.host,config.user,config.pass)

    if not dbConn then
        outputDebugString("Ошибка подключения к БД: " .. dbError())
        cancelEvent()
    else
        outputDebugString("Успешное подключение к БД!")
    end
else
    outputDebugString("Не удалось прочитать файл MySQL_settings.config")
    cancelEvent()
end

addEventHandler("onResourceStop",getResourceRootElement(getThisResource()),function()
    if dbConn then
        dbDisconnect(dbConn)
        outputDebugString("Г‘Г®ГҐГ¤ГЁГ­ГҐГ­ГЁГҐ Г± ГЃГ„ Г§Г ГЄГ°Г»ГІГ®!")
    end
end)