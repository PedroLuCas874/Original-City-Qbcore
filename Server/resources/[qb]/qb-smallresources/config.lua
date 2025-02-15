Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Usar interações qb-target (não altere isso, vá para o seu server.cfg e adicione `setr UseTarget true` para usar isso, e mude de true para false ou o contrário)
Config.PauseMapText = ''                                     -- Texto mostrado acima do mapa quando ESC é pressionado. Se deixado em branco, aparecerá 'FiveM'
Config.HarnessUses = 20
Config.DamageNeeded = 100.0                                  -- quantidade de dano até que você possa empurrar seu veículo. 0-1000
Config.Logging = 'discord'                                   -- fivemanage

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1000000, -- Tempo limite de kick por AFK (em segundos)
    kickInCharMenu = false      -- Defina como true se você quiser expulsar jogadores por estarem AFK, mesmo quando estiverem no menu de personagens.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = { 24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264 }
}

Config.Binoculars = {
    zoomSpeed = 10.0,        -- velocidade de zoom da câmera
    storeBinocularsKey = 177 -- tecla padrão para voltar (backspace)
}

Config.AIResponse = {
    wantedLevels = false, -- se true, você receberá níveis de procurado
    dispatchServices = {  -- Serviços de despacho de IA
        [1] = false,      -- Police Vehicles                                 -- Veículos da polícia
        [2] = false,      -- Police Helicopters                              -- Helicópteros da polícia
        [3] = false,      -- Fire Department Vehicles                        -- Veículos dos bombeiros
        [4] = false,      -- Swat Vehicles                                   -- Veículos Swat
        [5] = false,      -- Ambulance Vehicles                              -- Veículos de ambulância
        [6] = false,      -- Police Motorcycles                              -- Motocicletas da polícia
        [7] = false,      -- Police Backup                                   -- Reforço policial
        [8] = false,      -- Police Roadblocks                               -- Bloqueios policiais
        [9] = false,      -- PoliceAutomobileWaitPulledOver                  -- Espera de abordagem policial em automóveis
        [10] = false,     -- PoliceAutomobileWaitCruising                    -- Patrulha policial em automóveis
        [11] = false,     -- Gang Members                                    -- Membros de gangue
        [12] = false,     -- Swat Helicopters                                -- Helicópteros Swat
        [13] = false,     -- Police Boats                                    -- Barcos da polícia
        [14] = false,     -- Army Vehicles                                   -- Veículos do exército
        [15] = false      -- Biker Backup                                    -- Reforço de motoqueiros
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = true,                                      -- Se definido como verdadeiro, a presença rica do Discord será habilitada
    applicationId = '1212211878240190614',                 -- The discord application id
    iconLarge = 'originalcity',                            -- The name of the large icon
    iconLargeHoverText = 'Original City',                  -- The hover text of the large icon
    iconSmall = 'originalcity',                            -- The name of the small icon
    iconSmallHoverText = 'Original City',                  -- The hover text of the small icon
    updateRate = 60000,                                    -- How often the player count should be updated
    showPlayerCount = false,                                -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 150,                                       -- Maximum amount of players
    buttons = {
        {
            text = 'Nosso Discord',
            url = 'https://discord.gg/q2v4vxhtxx'
        },
        {
            text = 'Nosso Instagram',
            url = 'https://www.instagram.com/originalcityoficial/'
        }
    }
}

Config.Density = {
    parked = 0.8,
    vehicle = 0.8,
    multiplier = 0.8,
    peds = 0.8,
    scenario = 0.8
}

Config.Disable = {
    hudComponents = { 1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = { 37 },                                            -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true,                                           -- false disables ammo display
    ambience = false,                                             -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = true,                                            -- disables the idle cinematic camera
    vestDrawable = false,                                         -- disables the vest equipped when using heavy armor
    pistolWhipping = true,                                        -- disables pistol whipping
    driveby = false,                                              -- disables driveby
}

Config.RelieveWeedStress = math.random(15, 20) -- stress relief amount (100 max)

Config.Consumables = {
    eat = { -- default food items
        ['sandwich'] = math.random(35, 54),
        ['tosti'] = math.random(40, 50),
        ['twerks_candy'] = math.random(35, 54),
        ['snikkel_candy'] = math.random(40, 50)
    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(35, 54),
        ['kurkakola'] = math.random(35, 54),
        ['coffee'] = math.random(40, 50)
    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),
    },
    custom = { -- put any custom items here
        -- ['newitem'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {'''
        --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(20, 40),
        --         isAlcohol = false, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = {  -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = true,
    [`luxor`] = true,
    [`luxor2`] = true,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = true,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = true,
    [`mule`] = true,
    [`maverick`] = true,
    [`blimp`] = true,
    [`airtug`] = true,
    [`camper`] = true,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.Objects = { -- para remoção de objetos
    { coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b' },
    { coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a' },
}

-- Você pode adicionar mais de 2 seleções e isso trará um menu para o jogador selecionar qual andar, mas certifique-se de rotular cada seção
Config.Teleports = {
    [1] = {                   -- Elevador @ laboratórios
        [1] = {               -- subir
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- permitir ou não o uso em veículos
            label = false     -- defina isso como uma string para um rótulo personalizado ou deixe falso para manter o padrão. Se houver mais de 2 opções, rotule todas as opções

        },
        [2] = { -- descer
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [2] = { -- Entrada/Saída de Processamento de Cocaína
        [1] = {
            poly = { coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            poly = { coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Leave'
        }
    },
    [3] = {                   -- Elevador @ Hospital
        [1] = {               -- subir
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- permitir ou não o uso em veículos
            label = false     -- defina isso como uma string para um rótulo personalizado ou deixe falso para manter o padrão. Se houver mais de 2 opções, rotule todas as opções

        },
        [2] = { -- descer
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },    
}

Config.CarWash = {
    dirtLevel = 0.1,                                                                                   -- nível de sujeira necessário para ser considerado sujo
    defaultPrice = 20,                                                                                 -- preço padrão para o lava-rápido
    locations = {
        [1] = { coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359 }, -- South Los Santos Carson Avenue
        [2] = { coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0 },     -- South Los Santos Innocence Boulevard
        [3] = { coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315 },    -- Paleto Bay Boulevard
        [4] = { coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21 },     -- Sandy Shores
        [5] = { coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0 }   -- Little Seoul Gas Station
    }
}
