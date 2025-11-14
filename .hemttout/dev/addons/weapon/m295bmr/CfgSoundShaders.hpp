class CfgSoundShaders {
    // Define the base class
    class CLASS(SoundShader_WeaponShot_Base) {
        samples[] = {};
        volume = 1;
        range = 2000;
        rangeCurve[] = {
            {0, 1},
            {50, 0.7},
            {300, 0.3},
            {2000, 0}
        };
    };

    class CLASS(SoundShader_M295_BMRShot): CLASS(SoundShader_WeaponShot_Base) {
        samples[] = {
            {QPATHTOF(m295bmr\data\audio\DMR_1.ogg),"db5", 1, 2000}
        };
    };
};
