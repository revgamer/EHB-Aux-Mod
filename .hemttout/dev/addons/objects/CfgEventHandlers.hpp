// ============================================================================
// Echo Hand Battalion - Objects Event Handlers
// Author: EHB Dev Team
// ============================================================================

// ---------------------------------------------------------------
// PreStart
// ---------------------------------------------------------------
class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_SCRIPT(XEH_preStart));
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_SCRIPT(XEH_preInit));
    };
};

class Extended_InitPost_EventHandlers {
    // CE Locker
    class CLASS(CELoadout_Arsenal) {
        class GVAR(InitCE) {
            init = QUOTE(_this call FUNC(InitCE));
        };
    };

    // FR Locker
    class CLASS(FRLoadout_Arsenal) {
        class GVAR(InitFR) {
            init = QUOTE(_this call FUNC(InitFR));
        };
    };
};
