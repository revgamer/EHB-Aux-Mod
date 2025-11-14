class CfgSoundSets {

    class CLASS(SoundSet_WeaponShot_Base) {
        soundShaders[] = {};
        volumeFactor = 1;
        frequencyRandomizer = 0.05;
        sound3DProcessingType = "WeaponMediumShot3DProcessingType";
    };

    class CLASS(SoundSet_VK78CShot): CLASS(SoundSet_WeaponShot_Base) {
        soundShaders[] = {QCLASS(SoundShader_VK78CShot)};
    };
};
