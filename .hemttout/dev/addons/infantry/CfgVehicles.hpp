class CfgVehicles {
    class B_Soldier_base_F;

    // ------------------------------------------------
    // BASE CLASS
    // ------------------------------------------------
    class CLASS(Soldier_Base): B_Soldier_base_F {
        SCOPE_HIDDEN;
        faction = QFACTION(ehb);
        editorCategory = QEDCAT(EHB);
        editorSubcategory = QEDSUBCAT(Infantry);
        displayName = "EHB Soldier";
        genericNames = "NATOMen";
        identityTypes[] = {"LanguageENG_F", "Head_NATO", "G_NATO_default"};

        uniformClass = "U_B_CombatUniform_mcam";
        backpack = "";
        linkedItems[] = {
            "V_PlateCarrier1_rgr",
            "H_HelmetB",
            "ItemMap",
            "ItemCompass",
            "ItemWatch",
            "ItemRadio"
        };
        respawnLinkedItems[] = {
            "V_PlateCarrier1_rgr",
            "H_HelmetB",
            "ItemMap",
            "ItemCompass",
            "ItemWatch",
            "ItemRadio"
        };
        weapons[] = {"arifle_MX_F", "hgun_P07_F", "Throw", "Put"};
        respawnWeapons[] = {"arifle_MX_F", "hgun_P07_F", "Throw", "Put"};
        magazines[] = {"30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "16Rnd_9x21_Mag"};
        respawnMagazines[] = {"30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "16Rnd_9x21_Mag"};

        icon = "iconMan";
        camouflage = 1.2;
        sensitivity = 2.5;
        accuracy = 2.5;
    };

    // ------------------------------------------------
    // RIFLEMAN
    // ------------------------------------------------
    class CLASS(Rifleman): CLASS(Soldier_Base) {
        SCOPE_PUBLIC;
        displayName = "Rifleman";
        icon = "iconMan";
    };

    // ------------------------------------------------
    // AUTORIFLEMAN
    // ------------------------------------------------
    class CLASS(Autorifleman): CLASS(Soldier_Base) {
        SCOPE_PUBLIC;
        displayName = "Autorifleman";
        weapons[] = {"LMG_Mk200_F", "hgun_P07_F", "Throw", "Put"};
        respawnWeapons[] = {"LMG_Mk200_F", "hgun_P07_F", "Throw", "Put"};
        magazines[] = {"200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer", "16Rnd_9x21_Mag"};
        respawnMagazines[] = {"200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer", "16Rnd_9x21_Mag"};
        icon = "iconManMG";
    };

    // ------------------------------------------------
    // SQUAD LEADER
    // ------------------------------------------------
    class CLASS(SquadLead): CLASS(Soldier_Base) {
        SCOPE_PUBLIC;
        displayName = "Squad Leader";
        icon = "iconManLeader";
        weapons[] = {"arifle_MX_GL_F", "hgun_P07_F", "Throw", "Put"};
        respawnWeapons[] = {"arifle_MX_GL_F", "hgun_P07_F", "Throw", "Put"};
        magazines[] = {"30Rnd_65x39_caseless_mag", "1Rnd_HE_Grenade_shell", "SmokeShell", "SmokeShellGreen"};
        respawnMagazines[] = {"30Rnd_65x39_caseless_mag", "1Rnd_HE_Grenade_shell", "SmokeShell", "SmokeShellGreen"};
    };

    // ------------------------------------------------
    // CORPSMAN
    // ------------------------------------------------
    class CLASS(Corpsman): CLASS(Soldier_Base) {
        SCOPE_PUBLIC;
        displayName = "Corpsman";
        icon = "iconManMedic";
        attendant = 1;
        backpack = "B_AssaultPack_rgr_Medic";
    };
};
