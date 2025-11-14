/*
    Echo Hand Battalion - CE Init Function
    Called by CBA Extended Event Handlers when CE locker spawns

    Params:
        0: OBJECT - The locker object
*/

params ["_locker"];

// Simple spawn to wait for object initialization
_locker spawn {
    params ["_locker"];

    // Wait for object to be ready
    sleep 0.1;

    // Debug message
    systemChat "[EHB] CE Locker initialized!";

    // Register CE WBK Kits
    [_locker] execVM '\BLU\EHB\addons\objects\functions\fnc_registerCEKits.sqf';
};
