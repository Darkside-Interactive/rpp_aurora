function executeDataBaseQuery(db,query) -- executing query's
    local result = dbExec(db,query)
    if result then outputDebugString("Çàïðîñ âûïîëíåí óñïåøíî!")
    else outputDebugString("Îøèáêà âûïîëíåíèÿ çàïðîñà!" .. dbError()) end
end