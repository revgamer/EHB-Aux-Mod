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

    class CLASS(SoundShader_VK78CShot): CLASS(SoundShader_WeaponShot_Base) {
        samples[] = {
            {QPATHTOF(vk78commando\data\audio\VK78_F1.ogg), "db5", 1, 2000},
            {QPATHTOF(vk78commando\data\audio\VK78_F2.ogg), "db5", 1, 2000},
            {QPATHTOF(vk78commando\data\audio\VK78_F3.ogg), "db5", 1, 2000}

        };
    };
};
