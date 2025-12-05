class CfgMagazines {
    class CLASS(Mag_Base);

    // ===============================
    // 10Rnd 14.7x114mm Magazine (M98 Harvester)
    // ===============================
    class CLASS(10Rnd_147x114_Mag): CLASS(Mag_Base) {
        SCOPE_PUBLIC;
        baseMagazine = QCLASS(10Rnd_147x114_Mag);
        author = AUTHOR;

        displayName = "[EHB] 14.7x114mm 10Rnd Mag";
        displayNameShort = "14.7x114mm • 10Rnd";
        descriptionShort = "Low-capacity magazine • Hi-Power • 14.7x114mm Ball";

        model = "\A3\weapons_F\ammo\mag_univ.p3d";
        picture = "\A3\Weapons_F_Mark\Data\UI\M_338_CA.paa";

        // Uses high-power ammo
        ammo = QCLASS(95xVX2_Ball);

        count = 10;                // low-cap
        initSpeed = 1400;           // muzzle velocity (m/s)
        tracersEvery = 0;
        lastRoundsTracer = 2;
        mass = 10;                 // slightly heavier round
    };
};
