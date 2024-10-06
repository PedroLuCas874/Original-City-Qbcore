Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Usar interações com qb-target (não mude isso, vá ao seu server.cfg e adicione setr UseTarget true)
Config.MinimalDoctors = 2                                    -- Quantos jogadores com o emprego de ambulância são necessários para impedir o uso do sistema de check-in do hospital
Config.DocCooldown = 1                                       -- Tempo de espera entre chamadas de médicos permitidas, em minutos
Config.WipeInventoryOnRespawn = true                         -- Habilitar ou desabilitar a remoção de todos os itens do jogador ao renascer no hospital
Config.Helicopter = 'polmav'                                 -- Modelo de helicóptero que jogadores com o emprego de ambulância podem usar
Config.BillCost = 2000                                       -- Preço que os jogadores pagam por usar o sistema de check-in do hospital
Config.DeathTime = 300                                       -- Quanto tempo o jogador tem antes de sangrar completamente e renascer no hospital
Config.ReviveInterval = 360                                  -- Tempo que os jogadores têm para reviver um jogador em estado crítico
Config.MinimumRevive = 300                                   -- Tempo mínimo para os jogadores reviverem um jogador em estado crítico
Config.PainkillerInterval = 60                               -- Define o tempo de duração dos analgésicos (por cada um)
Config.HealthDamage = 5                                      -- Dano mínimo à saúde antes de verificar por lesões
Config.ArmorDamage = 5                                       -- Dano mínimo à armadura antes de verificar por lesões
Config.ForceInjury = 35                                      -- Quantidade máxima de dano que um jogador pode sofrer antes de danos nos membros e efeitos serem forçados a ocorrer
Config.AlwaysBleedChance = 70                                -- Define a chance, em 100, de que se um jogador for atingido por uma arma, isso também causará sangramento
Config.MessageTimer = 12                                     -- Quanto tempo levará para exibir a mensagem de lesão/sangramento
Config.AIHealTimer = 20                                      -- Quanto tempo levará para ser curado após fazer o check-in, em segundos
Config.BleedTickRate = 30                                    -- Tempo, em segundos, entre os "ticks" de sangramento
Config.BleedMovementTick = 10                                -- Quantos segundos são retirados do tempo do "tick" de sangramento se o jogador estiver andando, correndo, ou sprintando
Config.BleedMovementAdvance = 3                              -- Quanto tempo andando enquanto sangrando adiciona ao tempo total
Config.BleedTickDamage = 8                                   -- O dano base que é multiplicado pelo nível de sangramento a cada "tick" de sangramento
Config.FadeOutTimer = 2                                      -- Quantos "ticks" de sangramento ocorrem antes de começar a desmaiar
Config.BlackoutTimer = 10                                    -- Quantos "ticks" de sangramento ocorrem antes de desmaiar completamente
Config.AdvanceBleedTimer = 10                                -- Quantos "ticks" de sangramento ocorrem antes de o nível de sangramento aumentar
Config.HeadInjuryTimer = 30                                  -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão na cabeça
Config.ArmInjuryTimer = 30                                   -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão no braço
Config.LegInjuryTimer = 15                                   -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão na perna
Config.HeadInjuryChance = 25                                 -- A chance, em porcentagem, de que os efeitos colaterais de lesão na cabeça sejam aplicados
Config.LegInjuryChance = {                                   -- A chance, em porcentagem, de que os efeitos colaterais de lesão na perna sejam aplicados
    Running = 50,
    Walking = 15
}
Config.MajorArmoredBleedChance = 45 -- A chance, em porcentagem, de que o jogador sofra efeito de sangramento ao receber grandes danos enquanto usa armadura
Config.MaxInjuryChanceMulti = 3     -- Quantas vezes o valor de HealthDamage acima pode dividir no dano recebido antes que o dano seja forçado a ser aplicado
Config.DamageMinorToMajor = 35      -- Quanto dano deve ser aplicado para que uma arma menor seja considerada um evento de dano maior. Coloque em 100 se você quiser desativar isso
Config.AlertShowInfo = 2            -- Quantas lesões um jogador deve ter antes de ser alertado sobre elas

Config.Locations = {                -- Edite os vários pontos de interação para os jogadores ou crie novos   
    ['checking'] = {
        vector3(-675.86, 325.93, 83.08),
        vector3(-254.54, 6331.78, 32.43), -- paleto
    },
    ['duty'] = { -- locais para iniciar/encerrar o serviço
        vector3(-680.56, 342.34, 83.08),
        vector3(-254.88, 6324.5, 32.58), -- paleto
    },
    ['vehicle'] = { -- locais para retirar veículos
        vector4(-670.15, 338.51, 78.12, 82.5),
        vector4(-234.28, 6329.16, 32.15, 222.5), -- paleto
    },
    ['helicopter'] = { -- locais para retirar Heli
        vector4(-644.86, 315.33, 140.15, 173.01),
        vector4(-687.08, 321.21, 140.15, 174.8),
        vector4(-707.91, 320.68, 140.15, 175.45),
        vector4(-475.43, 5988.353, 31.716, 31.34), -- paleto
    },
    ['roof'] = { -- Telhado ?
        vector4(338.5, -583.85, 74.16, 245.5),
    },
    ['main'] = { -- Não Sei 
        vector3(298.74, -599.33, 43.29),
    },
    ['stash'] = { -- Não Sei
        vector3(309.78, -596.6, 43.29),
    },
    ['beds'] = { -- Camas
        { coords = vector4(-662.66, 321.57, 88.8, 172.67),   taken = false, model = -925032225 },
        { coords = vector4(-660.01, 321.39, 88.87, 174.76),  taken = false, model = -388237781 },
        { coords = vector4(354.12, -593.12, 43.1, 336.32),   taken = false, model = 2117668672 },
        { coords = vector4(350.79, -591.8, 43.1, 336.32),    taken = false, model = 2117668672 },
        { coords = vector4(346.99, -590.48, 43.1, 336.32),   taken = false, model = 2117668672 },
        { coords = vector4(360.32, -587.19, 43.02, 152.08),  taken = false, model = -1091386327 },
        { coords = vector4(349.82, -583.33, 43.02, 152.08),  taken = false, model = -1091386327 },
        { coords = vector4(326.98, -576.17, 43.02, 152.08),  taken = false, model = -1091386327 },
        --- paleto
        { coords = vector4(-252.43, 6312.25, 32.34, 313.48), taken = false, model = 2117668672 },
        { coords = vector4(-247.04, 6317.95, 32.34, 134.64), taken = false, model = 2117668672 },
        { coords = vector4(-255.98, 6315.67, 32.34, 313.91), taken = false, model = 2117668672 },
    },
    ['jailbeds'] = {
        { coords = vector4(1761.96, 2597.74, 45.66, 270.14), taken = false, model = 2117668672 },
        { coords = vector4(1761.96, 2591.51, 45.66, 269.8),  taken = false, model = 2117668672 },
        { coords = vector4(1771.8, 2598.02, 45.66, 89.05),   taken = false, model = 2117668672 },
        { coords = vector4(1771.85, 2591.85, 45.66, 91.51),  taken = false, model = 2117668672 },
    },
    ['hospital'] = {
        {
            ['name'] = Lang:t('info.pb_hospital'),
            ['location'] = vector3(-673.8, 325.69, 88.02),
            ['beds'] = {
                { coords = vector4(-662.66, 321.57, 88.8, 172.67),   taken = false, model = -925032225 },
                { coords = vector4(-660.01, 321.39, 88.87, 174.76), taken = false, model = -388237781 },
                { coords = vector4(354.12, -593.12, 43.1, 336.32),  taken = false, model = 2117668672 },
                { coords = vector4(350.79, -591.8, 43.1, 336.32),   taken = false, model = 2117668672 },
                { coords = vector4(346.99, -590.48, 43.1, 336.32),  taken = false, model = 2117668672 },
                { coords = vector4(360.32, -587.19, 43.02, 152.08), taken = false, model = -1091386327 },
                { coords = vector4(349.82, -583.33, 43.02, 152.08), taken = false, model = -1091386327 },
                { coords = vector4(326.98, -576.17, 43.02, 152.08), taken = false, model = -1091386327 },
            },
        },
        {
            ['name'] = Lang:t('info.paleto_hospital'),
            ['location'] = vector3(-254.54, 6331.78, 32.43),
            ['beds'] = {
                { coords = vector4(-252.43, 6312.25, 32.34, 313.48), taken = false, model = 2117668672 },
                { coords = vector4(-247.04, 6317.95, 32.34, 134.64), taken = false, model = 2117668672 },
                { coords = vector4(-255.98, 6315.67, 32.34, 313.91), taken = false, model = 2117668672 },
            },
        },
    },
    ['stations'] = {
        { label = Lang:t('info.pb_hospital'), coords = vector3(304.27, -600.33, 43.28) }
    }
}

Config.AuthorizedVehicles = { -- Grade is key, don't add same vehicle in multiple grades. Higher rank can see lower
    [0] = {
        ['ambulance'] = 'Ambulance'
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    { label = Lang:t('states.little_bleed') },
    { label = Lang:t('states.bleed') },
    { label = Lang:t('states.lot_bleed') },
    { label = Lang:t('states.big_bleed') },
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089]  = 'LFINGER',
    [4090]  = 'LFINGER',
    [4137]  = 'LFINGER',
    [4138]  = 'LFINGER',
    [4153]  = 'LFINGER',
    [4154]  = 'LFINGER',
    [4169]  = 'LFINGER',
    [4170]  = 'LFINGER',
    [4185]  = 'LFINGER',
    [4186]  = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108]  = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]] --
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]] --
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]] --
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]] --
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]                                            --
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'],      -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'],      -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]                                    --
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]] --
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]] --
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]] --
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]                                                   --
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'],                -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]                                                    --
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]                                                     --
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'],            -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'],          -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ['car1'] = {           -- Model name
        ['extras'] = {
            ['1'] = false, -- on/off
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    },
    ['car2'] = {
        ['extras'] = {
            ['1'] = false,
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    }
}
