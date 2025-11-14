class CfgMagazines {
    class TKE_MDPistol_mag;

    class CLASS(12Rnd_9x21_Mag): TKE_MDPistol_mag {
        SCOPE_PUBLIC;
        baseMagazine = QCLASS(12Rnd_9x21_Mag);
        author = AUTHOR;

        displayname = "[EHB] 12Rnd 9x21mm Magazine";
        displaynameshort = "9x21mm";
        descriptionshort = "12 Round Magazine<br/>9x21mm<br/>";

        // Keep vanilla OPTRE models
        model = "\A3\weapons_F\ammo\mag_univ.p3d";
        picture = "\A3\weapons_f\data\ui\M_16Rnd_9x21_CA.paa";

        ammo = QCLASS(9x21_Ball);
        count = 12;
        initSpeed = 410;
        tracersEvery = 0;
        lastRoundsTracer = 2;
        mass = 6;
    };
};
