#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "ace_main",
            "cba_main",
            "A3_Characters_F",
            "A3_Weapons_F",
            "A3_Air_F",
            "A3_Armor_F",
            "A3_Soft_F",
            "A3_Drones_F",
            "A3_Static_F",
            "UK3CB_BAF_Equipment",
            "UK3CB_BAF_Weapons",
            "UK3CB_BAF_Vehicles"
        };
        units[] = {
            QCLASS(Rifleman),
            QCLASS(Autorifleman),
            QCLASS(SquadLead),
            QCLASS(Corpsman)
        };
        weapons[] = {};
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
