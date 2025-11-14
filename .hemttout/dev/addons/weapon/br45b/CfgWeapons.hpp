class Mode_SemiAuto;
class Mode_FullAuto;
class Mode_Burst;

class CfgWeapons {
    class Rifle_Base_F;
    class arifle_Mk20_F: Rifle_Base_F {
        class WeaponSlotsInfo;
    };
    class OPTRE_BR45: arifle_Mk20_F {
        class WeaponSlotsInfo: WeaponSlotsInfo {
            class CowsSlot;
            class PointerSlot;
            class MuzzleSlot;
        };

        class Single: Mode_SemiAuto {
            class StandardSound;
        };
        class FullAuto: Mode_FullAuto {
            class StandardSound;
        };

        class Burst: Mode_Burst {
            class StandardSound;
        };
    };

    class CLASS(BR45B): OPTRE_BR45 {
        SCOPE_PUBLIC;
        author = AUTHOR;
        baseWeapon = QCLASS(BR45B);

        displayName = "[EHB] BR45B Battle Rifle";
        descriptionShort = "Hi-Power Rifle • 9.5x40 • 32-round mag • Medium range";
        picture = "\OPTRE_weapons\br\icons\br45_icon.paa";
        cartridgePos = "nabojnicestart";
        cartridgeVel = "nabojniceend";

        modes[] = { "Single", "FullAuto", "Burst" };
        magazines[] = { QCLASS(32Rnd_95x40_Mag) };
        dispersion = 0.00029;
        maxZeroing = 600;
        discreteDistance[] = {100,200,300,400,500,600};
        discreteDistanceInitIndex = 1;

        class WeaponSlotsInfo: WeaponSlotsInfo {
            mass = 45;

            class CowsSlot: CowsSlot {
                compatibleItems[] = {
                    "Optre_Evo_Sight_Riser",
                    "OPTRE_M12_Optic",
                    "Optre_Recon_Sight",
                    "Optre_Recon_Sight_Red"

                };
            };

            class PointerSlot: PointerSlot {
                class CompatibleItems {
                    ATTACHMENTS_POINTER_BASE
                };
            };

            class MuzzleSlot: MuzzleSlot {
                compatibleItems[] = {
                    "OPTRE_Ma5Suppressor",
                    "OPTRE_M247a1_Flashhider"
                };
            };
        };

        class Single: Single {
            displayName = "Semi";
            reloadTime = 0.0923077;
            dispersion = 0.00075;
            soundContinuous = 0;
            recoil = "recoil_single_trg";
            recoilProne = "recoil_single_prone_trg";
            minRange = 2;
            minRangeProbab = 0.03;
            midRange = 300;
            midRangeProbab = 0.7;
            maxRange = 600;
            maxRangeProbab = 0.05;
            aiRateOfFire = 2.0;
            aiRateOfFireDispersion = 1;
            aiRateOfFireDistance = 500;

            class StandardSound: StandardSound {
                class StandardSound {
                    begin1[] = {"\EHB_Weapons\MA5C\Data\sounds\MA5C_Shot_1.wss",1,1,2000};
                    closure1[] = {};
                    closure2[] = {};
                    soundBegin[] = {"begin1",1};
                    soundClosure[] = {"closure1",0.5,"closure2",0.5};
                    soundSetShot[] = {
                        "jsrs_rifle_shake_soundset",
                        "jsrs_mk18_shot_soundset",
                        "jsrs_762x51mm_reverb_soundset",   // or calibre-specific
                        "jsrs_9x3mm_reflector_soundset"
                    };
                    weaponSoundEffect = "DefaultRifle";
                };

            };
        };

        class FullAuto: FullAuto {
            displayName = "Full Auto";
            reloadTime = 0.0923077;
            dispersion = 0.00085;
            soundContinuous = 0;
            recoil = "recoil_auto_trg";
            recoilProne = "recoil_auto_prone_trg";
            minRange = 2;
            minRangeProbab = 0.03;
            midRange = 300;
            midRangeProbab = 0.7;
            maxRange = 600;
            maxRangeProbab = 0.05;
            aiRateOfFire = 2.0;
            aiRateOfFireDispersion = 1;
            aiRateOfFireDistance = 500;

            class StandardSound: StandardSound {
                class StandardSound {
                    begin1[] = {"\EHB_Weapons\MA5C\Data\sounds\MA5C_Shot_1.wss",1,1,2000};
                    closure1[] = {};
                    closure2[] = {};
                    soundBegin[] = {"begin1",1};
                    soundClosure[] = {"closure1",0.5,"closure2",0.5};
                    soundSetShot[] = {
                        "jsrs_rifle_shake_soundset",
                        "jsrs_mk18_shot_soundset",
                        "jsrs_762x51mm_reverb_soundset",   // or calibre-specific
                        "jsrs_9x3mm_reflector_soundset"
                    };
                    weaponSoundEffect = "DefaultRifle";
                };

            };
        };

        class Burst: Burst {
            displayName = "Burst";
            burst = 3;
            reloadTime = 0.075;
            dispersion = 0.00085;
            soundContinuous = 0;
            recoil = "recoil_auto_trg";
            recoilProne = "recoil_auto_prone_trg";
            minRange = 2;
            minRangeProbab = 0.03;
            midRange = 300;
            midRangeProbab = 0.7;
            maxRange = 600;
            maxRangeProbab = 0.05;
            aiRateOfFire = 2.0;
            aiRateOfFireDispersion = 1;
            aiRateOfFireDistance = 500;

            class StandardSound: StandardSound {
                soundSetShot[] = {QCLASS(SoundSet_BR45BShot)};
            };
        };
    };
};
