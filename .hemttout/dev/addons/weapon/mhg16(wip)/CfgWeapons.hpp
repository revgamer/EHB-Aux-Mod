class Mode_SemiAuto;

class CfgWeapons {

    class Pistol_Base_F;
    class hgun_Pistol_heavy_01_F: Pistol_Base_F {
        class WeaponSlotsInfo;
    };

    class TKE_MDPistolBlack: hgun_Pistol_heavy_01_F {
        class WeaponSlotsInfo: WeaponSlotsInfo {
            class CowsSlot;
            class PointerSlot;
            class MuzzleSlot;
        };

        class Single: Mode_SemiAuto {
                    };
    };

    class CLASS(MHG16): TKE_MDPistolBlack {
        SCOPE_PUBLIC;
        author = AUTHOR;
        baseWeapon = QCLASS(MHG16);

        displayName = "[EHB] MHG-16";
        descriptionShort = "MHG-16 Pistol";
        picture = "\TKE_Kuiper_Engagements\TKE_Weapons\ui\MHG16.paa";
        model = "\TKE_Kuiper_Engagements\TKE_Weapons\TKE_MDPistol.p3d";
        cartridgePos = "nabojnicestart";
        cartridgeVel = "nabojniceend";
        muzzles[] = {"this"};
        modes[] = {"Single"};
        magazines[] = {QCLASS(12Rnd_9x21_Mag)};


        class WeaponSlotsInfo: WeaponSlotsInfo {
            mass = 30;

            class CowsSlot: CowsSlot {
                compatibleItems[] = {
                };
            };

            class PointerSlot: PointerSlot {
                class CompatibleItems {
                    ATTACHMENTS_POINTER_BASE
                };
            };

            class MuzzleSlot: MuzzleSlot {
                compatibleItems[] = {
                    "OPTRE_Ma5Suppressor"
                };
            };
        };

        class Single: Single {
            displayName = "Single";
        };
    };

};
