class Mode_SemiAuto;

class CfgWeapons {

    class Pistol_Base_F;
    class hgun_Pistol_heavy_01_F: Pistol_Base_F {
        class WeaponSlotsInfo;
        class GunParticles;
    };

    class TKE_MDPistolBlack: hgun_Pistol_heavy_01_F {
        class WeaponSlotsInfo: WeaponSlotsInfo {
            class CowsSlot;
            class PointerSlot;
            class MuzzleSlot;
            class UnderBarrelSlot;
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
        hiddenSelections[]={"camo"};
        hiddenSelectionsTextures[]={"\TKE_Kuiper_Engagements\TKE_Weapons\data\TKE_MDPistol_co.paa"};
        cartridgePos = "nabojnicestart";
        cartridgeVel = "nabojniceend";
        muzzles[] = {"this"};
        modes[] = {"Single"};
        magazines[] = {QCLASS(12Rnd_9x21_Mag)};
        magazineWell[]={"TKE_MHG_MagWell"};
        reloadAction="WBK_TKE_Pistol_Reload";
		magazineReloadSwitchPhase=0.40000001;
		discreteDistanceInitIndex=0;


        class WeaponSlotsInfo: WeaponSlotsInfo {
            mass = 30;

            class CowsSlot: CowsSlot {
                compatibleItems[] = {
                };
                iconPosition[]={0.5,0.34999999};
				iconScale=0.2;
            };

            class PointerSlot: PointerSlot {
                class CompatibleItems {
                    ATTACHMENTS_POINTER_BASE
                };
                linkProxy="\A3\data_f\proxies\weapon_slots\SIDE";
                iconPicture="\A3\Weapons_F\Data\UI\attachment_side.paa";
				iconPinpoint="Center";
                };

            class MuzzleSlot: MuzzleSlot {
                compatibleItems[] = {
                };
                linkProxy="";
				iconPosition[]={0,0.44999999};
				iconScale=0.2;
				iconPicture="\A3\Weapons_F\Data\UI\attachment_muzzle.paa";
				iconPinpoint="Center";
            };

            class UnderBarrelSlot: UnderBarrelSlot
			{
				iconPosition[]={0.2,0.69999999};
				iconScale=0.2;
				compatibleItems[]={};
				linkProxy="";
			};
        };

        class GunParticles: GunParticles {
			    class SecondEffect{
				    positionName="Nabojnicestart";
				    directionName="Nabojniceend";
				    effectName="PistolCloud";
                };
        };

        class Single: Single {
            displayName = "Single";
            minRange=25;
			minRangeProbab=0.30000001;
			midRange=50;
			midRangeProbab=0.5;
			maxRange=100;
			maxRangeProbab=0.2;
			aiRateOfFireDistance=80;
        };
    };

};
