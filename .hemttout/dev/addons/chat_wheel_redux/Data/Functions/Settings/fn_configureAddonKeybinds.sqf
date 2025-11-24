// WIKI: https://cbateam.github.io/CBA_A3/docs/files/keybinding/fnc_addKeybind-sqf.html#CBA_fnc_addKeybind

#include "\a3\ui_f\hpp\defineDIKCodes.inc"  // Key Codes

// ============================================================================
// CHAT WHEEL MENU (Original)
// ============================================================================
[
    ["505th Expeditionary Force Aux Mod", "Chat Wheel Menu"],
    "CWR_OpenMenu",
    ["Open Menu", "Opens the custom chat menu."],
    {
        call CWR_fnc_openChatWheel;
    },     // KeyDown
    {},    // KeyUp
    [],    // Default Key
    false, // Hold Key
    0,     // Hold Key Delay
    false  // Overwrite
] call CBA_fnc_addKeybind;


// ============================================================================
// NUMPAD QUICK CHAT - Basic Messages
// ============================================================================

// Numpad 1 - Medic!
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_1",
    ["Medic!", "Send 'I need a medic!' message"],
    {
        "[vl-NeedMedic]I need a medic!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD1, [false, false, false]], // Numpad 1
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 2 - Help
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_2",
    ["Help", "Send 'I need help!' message"],
    {
        "[vl-NeedHelp]I need help!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD2, [false, false, false]], // Numpad 2
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 3 - Sorry
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_3",
    ["Sorry", "Send 'Sorry!' message"],
    {
        "[vl-Sorry]Sorry!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD3, [false, false, false]], // Numpad 3
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 4 - Follow
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_4",
    ["Follow Me", "Send 'Follow me!' message"],
    {
        "[vl-Follow]Follow me!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD4, [false, false, false]], // Numpad 4
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 5 - Contact (Distance submenu)
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_5",
    ["Contact - Distance", "Send contact message with distance"],
    {
        // Opens distance submenu for contact
        private _message = "[vl-ContactInfClose]Contact, [distance]!";
        [_message] spawn CWR_OpenDistanceMenu;
    },
    {},
    [DIK_NUMPAD5, [false, false, false]], // Numpad 5
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 6 - Vehicle (Distance)
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_6",
    ["Vehicle - Distance", "Send vehicle callout with distance"],
    {
        private _message = "Vehicle spotted, [distance]!";
        [_message] spawn CWR_OpenDistanceMenu;
    },
    {},
    [DIK_NUMPAD6, [false, false, false]], // Numpad 6
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 7 - Fortification (Distance)
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_7",
    ["Fortification - Distance", "Send fortification callout with distance"],
    {
        private _message = "Fortification spotted, [distance]!";
        [_message] spawn CWR_OpenDistanceMenu;
    },
    {},
    [DIK_NUMPAD7, [false, false, false]], // Numpad 7
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 8 - Low Ammo
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_8",
    ["Low Ammo", "Send 'Running low on ammo!' message"],
    {
        "Running low on ammo for my [weapon]!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD8, [false, false, false]], // Numpad 8
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 9 - Call Medic Check
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_9",
    ["Call Medic Check", "Ask squad for medical status"],
    {
        "Sound off, medical status!" call CWR_fnc_sendGroupMessage;
    },
    {},
    [DIK_NUMPAD9, [false, false, false]], // Numpad 9
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Numpad 0 - Response Medic Check (Status submenu)
[
    ["505th Expeditionary Force Aux Mod", "Numpad Quick Chat"],
    "CWR_NumPad_0",
    ["Medical Status", "Report your medical status"],
    {
        private _message = "[status]";
        [_message] spawn CWR_OpenStatusMenu;
    },
    {},
    [DIK_NUMPAD0, [false, false, false]], // Numpad 0
    false,
    0,
    false
] call CBA_fnc_addKeybind;


// ============================================================================
// NUMPAD QUICK CHAT - Custom Messages (Ctrl + Numpad)
// ============================================================================

// Ctrl + Numpad 1 - Custom Message 1
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_1",
    ["Custom Message 1", "Send custom message 1 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 1"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD1, [true, false, false]], // Ctrl + Numpad 1
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 2 - Custom Message 2
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_2",
    ["Custom Message 2", "Send custom message 2 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 2"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD2, [true, false, false]], // Ctrl + Numpad 2
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 3 - Custom Message 3
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_3",
    ["Custom Message 3", "Send custom message 3 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 3"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD3, [true, false, false]], // Ctrl + Numpad 3
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 4 - Custom Message 4
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_4",
    ["Custom Message 4", "Send custom message 4 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 4"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD4, [true, false, false]], // Ctrl + Numpad 4
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 5 - Custom Message 5
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_5",
    ["Custom Message 5", "Send custom message 5 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 5"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD5, [true, false, false]], // Ctrl + Numpad 5
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 6 - Custom Message 6
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_6",
    ["Custom Message 6", "Send custom message 6 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 6"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD6, [true, false, false]], // Ctrl + Numpad 6
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 7 - Custom Message 7
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_7",
    ["Custom Message 7", "Send custom message 7 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 7"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD7, [true, false, false]], // Ctrl + Numpad 7
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 8 - Custom Message 8
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_8",
    ["Custom Message 8", "Send custom message 8 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 8"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD8, [true, false, false]], // Ctrl + Numpad 8
    false,
    0,
    false
] call CBA_fnc_addKeybind;

// Ctrl + Numpad 9 - Custom Message 9
[
    ["505th Expeditionary Force Aux Mod", "Numpad Custom Messages"],
    "CWR_NumPad_Custom_9",
    ["Custom Message 9", "Send custom message 9 (configurable in settings)"],
    {
        private _msg = [CWR_messagesHashMap, "Custom 9"] call CBA_fnc_hashGet;
        if (_msg != "Default") then {
            _msg call CWR_fnc_sendGroupMessage;
        };
    },
    {},
    [DIK_NUMPAD9, [true, false, false]], // Ctrl + Numpad 9
    false,
    0,
    false
] call CBA_fnc_addKeybind;
