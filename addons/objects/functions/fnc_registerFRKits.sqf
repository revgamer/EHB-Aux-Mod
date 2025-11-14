/*
    Echo Hand Battalion - CE Kit Registration Function
    Registers all CE kits with WBK Arsenal system

    Params:
        _locker - The locker object to register kits to
*/

params ["_locker"];

// Wait for object to be ready
sleep 1;

systemChat "[EHB] Registering FR WBK Kits...";

// ============================================================================
// CE Kits Registration
// ============================================================================

// CE Platoon Leader
[
    _locker,
    "CE Platoon Leader",
    [["OPTRE_MA37K","","acc_pointer_IR","",["OPTRE_32Rnd_762x51_Mag",32],[],""],
     [],
     ["OPTRE_M6B","","","",["OPTRE_8Rnd_127x40_Mag",8],[],""],
     ["OLI_Uniform_CE_PL_Rolled",[["ACE_elasticBandage",20],["ACE_splint",4],["ACE_tourniquet",4],
     ["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ItemcTabHCam",1],["ACE_EntrenchingTool",1],
     ["ACE_Flashlight_XL50",1],["ACE_CableTie",5],["kat_Painkiller",5,4],["Laserbatteries",2,1],
     ["acex_intelitems_notepad",1,1],["OPTRE_M2_Smoke",4,1],["OPTRE_M2_Smoke_Blue",2,1]]],
     ["OLI_CE_Armour_PL_Vest_NSPouch",[["OPTRE_8Rnd_127x40_Mag",3,8],["OPTRE_32Rnd_762x51_Mag",10,32]]],
     ["Rogue_CEBackpackLR",[["ItemcTab",1],["MineDetector",1],["OPTRE_M9_Frag",4,1],[["UNSC_Knife","","","",[],[],""],1]]],
     "Rogue_CECapCamo","OPTRE_HUD_In_Glasses",["OPTRE_Smartfinder","","","",["Laserbatteries",1],[],""],
     ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","OPTRE_NVG"]],
    ["OPTRE_MA37K","OPTRE_M295_BMR","OPTRE_MA5A"],
    "true",
    {}
] spawn Wbk_AddKit;

// CE Squad Leader
[
    _locker,
    "CE Squad Leader",
    [["OPTRE_MA37K","","acc_pointer_IR","Optre_Evo_Sight_Riser",["OPTRE_32Rnd_762x51_Mag",32],[],""],
     [],
     ["OPTRE_M6B","","","",["OPTRE_8Rnd_127x40_Mag",8],[],""],
     ["OLI_Uniform_CE_SL",[["ACE_elasticBandage",20],["ACE_splint",4],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ItemcTabHCam",1],
     ["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_CableTie",5],["kat_Painkiller",5,4],["Laserbatteries",2,1],["acex_intelitems_notepad",1,1],
     ["OPTRE_M2_Smoke",4,1],["OPTRE_M2_Smoke_Blue",2,1]]],
     ["OLI_CE_Armour_SL_Vest",[["OPTRE_8Rnd_127x40_Mag",3,8],["OPTRE_32Rnd_762x51_Mag",10,32]]],
     ["Rogue_CEInvisibleBackpack",[["ItemcTab",1],["MineDetector",1],["OPTRE_M9_Frag",4,1],[["UNSC_Knife","","","",[],[],""],1]]],
     "OLI_CE_HELMET_SL","OPTRE_HUD_In_Glasses",["OPTRE_Smartfinder","","","",["Laserbatteries",1],[],""],
     ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","OPTRE_NVG"]],
    ["OPTRE_MA37K","OPTRE_MA5A"],
    "true",
    {}
] spawn Wbk_AddKit;

// Add your other CE kits below (Rifleman, Marksman, LAT, Corpsman, Breacher, etc.)

systemChat "[EHB] FR Kits registered successfully!";
