/*
 * Author: RevGamer
 * ACE3 Event handler for detecting reload actions. Triggers automated reload callouts.
 * Note: ACE3 doesn't have a reliable reload event, so we use vanilla Reloaded event which works with ACE3
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call CWR_fnc_reloadEHACE;
 */

"ace_common found. Starting ACE Reload Event Handler" call CWR_fnc_devLog;

// Vanilla Reloaded event works fine with ACE3
player addEventHandler ["Reloaded", {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
    "Reload detected" call CWR_fnc_devLog;
    [_unit, _weapon] call CWR_fnc_reloadMain;
}];

"ACE Reload Event Handler registered (using vanilla Reloaded event)" call CWR_fnc_devLog;
