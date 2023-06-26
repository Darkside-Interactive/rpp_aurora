//!============>> Copyright (c) 2017-2023 Darkside Interactive, Ltd. All rights reserved. <<============//
//
//? Цель: нативы с конкретными колонтитульниками, в которых содержатся ссылки-указатели на объекты маппинга
//
//!=====================================================================================================//

#include a_samp
_loadMapping() {
    //! return CreateObject's
    return true;
}
_load3DMapping() {
    return false;
}
_loadMappingWithModPack() {
    return false;
}
_loadObjects() {
    _loadMapping();
    #if defined LM_WithModPack
        _loadMappingWithModPack();  
    #endif
    #if defined L_3D_Mapping
        _load3DMapping();  
    #endif
    return true;
    // return _loadMapping();
}
_remMapping() {
    //! return DestroyObject's
    return false;
}