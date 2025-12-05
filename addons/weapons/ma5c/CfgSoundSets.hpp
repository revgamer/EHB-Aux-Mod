class CfgSoundSets {

    class CLASS(SoundSet_WeaponShot_Base);

    class CLASS(SoundSet_MA5CShot): CLASS(SoundSet_WeaponShot_Base) {
        soundShaders[] = {QCLASS(SoundShader_MA5CShot)};
    };
};
