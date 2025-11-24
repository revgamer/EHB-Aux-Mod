/*
 * Author: RevGamer
 * Vanilla Event handler for detecting reload actions. Triggers automated reload callouts.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call CWR_fnc_reloadEH;
 */

"ace_common not loaded. Starting vanilla Reload Event Handler" call CWR_fnc_devLog;

player addEventHandler ["Reloaded", {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
    [_unit, _weapon] call CWR_fnc_reloadMain;
}];
