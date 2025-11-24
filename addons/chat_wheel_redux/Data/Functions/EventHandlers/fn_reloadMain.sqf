/*
 * Author: Revgamer
 * Main code for the automated reload messages. Handles formatting the message and sending it to nearby units.
 *
 * Arguments:
 * 0: sender - Object - The unit reloading
 * 1: weapon - String - The classname of the weapon being reloaded
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, "arifle_MX_F"] call CWR_fnc_reloadMain;
 */

params ["_sender", "_weapon"];

// Exit if weapon is actually a grenade launcher (prevents reload message when throwing grenades)
if (_weapon == "Throw") exitWith {};

// Check if reload callouts are enabled
if !(CWR_AutoMessages_Reloading) exitWith {};

// Get nearby players within 30 meters
private _nearbyUnits = (getPosATL _sender) nearEntities ["CAManBase", 30];
_nearbyUnits = _nearbyUnits select { isPlayer _x; };

// Don't process tags here - let sendLocalMessage do it to avoid duplicate processing
// Tags are processed in sendLocalMessage which runs on each client
private _message = "[vl-Reloading]Reloading, cover me!";

{
    [_sender, _message] remoteExecCall ["CWR_fnc_sendLocalMessage", _x];
} forEach _nearbyUnits;
