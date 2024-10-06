Config = {}
Config.RequireJob = true                       -- é necessário ter um trabalho de mecânico para usar as peças?
Config.FuelResource = 'LegacyFuel'             -- suporta qualquer que tenha uma exportação GetFuel() e SetFuel()

Config.PaintTime = 5                           -- quanto tempo leva para pintar um veículo em segundos
Config.ColorFavorites = false                  -- adicione suas próprias cores ao menu de favoritos (veja no final de const.lua)

Config.NitrousBoost = 1.8                      -- quanto de aumento o nitro dá (quer isso acima de 1.0) 
Config.NitrousUsage = 0.1                      -- quanto de nitro é usado por frame enquanto segura a tecla

Config.UseDistance = true                      -- habilitar/desabilitar a medição da distância percorrida pelo veículo
Config.UseDistanceDamage = true                -- danificar a saúde do motor do veículo com base na distância percorrida
Config.UseWearableParts = true                 -- habilitar/desabilitar peças desgastáveis
Config.WearablePartsChance = 1                 -- chance de as peças desgastáveis serem danificadas enquanto dirige, se habilitado
Config.WearablePartsDamage = math.random(1, 2) -- quanto as peças desgastáveis são danificadas quando danificadas, se habilitado
Config.DamageThreshold = 25                    -- quão desgastada uma peça precisa estar ou abaixo para aplicar um efeito, se habilitado
Config.WarningThreshold = 50                   -- quão desgastada uma peça precisa estar para mostrar um aviso de cor na caixa de ferramentas, se habilitado

Config.MinimalMetersForDamage = {              -- não utilizado se Config.UseDistanceDamage for false
    { min = 5000,  max = 10000, damage = 10 },
    { min = 15000, max = 20000, damage = 20 },
    { min = 25000, max = 30000, damage = 30 },
}

Config.WearableParts = { -- não utilizado se Config.UseWearableParts for false (sinta-se à vontade para adicionar/remover peças)
    radiator = { label = Lang:t('menu.radiator_repair'), maxValue = 100, repair = { steel = 2 } },
    axle = { label = Lang:t('menu.axle_repair'), maxValue = 100, repair = { aluminum = 2 } },
    brakes = { label = Lang:t('menu.brakes_repair'), maxValue = 100, repair = { copper = 2 } },
    clutch = { label = Lang:t('menu.clutch_repair'), maxValue = 100, repair = { copper = 2 } },
    fuel = { label = Lang:t('menu.fuel_repair'), maxValue = 100, repair = { plastic = 2 } },
}

Config.Shops = {
    paradise = { -- City location
        managed = true,
        shopLabel = 'Paradise Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-1598.6, -847.12, 9.99),
        duty = vector3(-1593.03, -856.93, 10.1),
        stash = vector3(-1594.31, -858.56, 10.1),
        paint = vector3(-1624.28, -822.51, 10.07),
        vehicles = {
            withdraw = vector3(-369.30, -104.75, 38.38),
            spawn = vector4(-1593.89, -826.27, 9.98, 140.43),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    mechanic2 = { -- Harmony Location
        managed = true,
        shopLabel = 'Pedreiro Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(1174.93, 2639.45, 37.75),
        duty = vector3(51.61, -2582.39, 6.26),
        stash = vvector3(46.47, -2576.75, 6.26),
        --paint = vector3(1181.29, 2634.69, 37.80),
        vehicles = {
            withdraw = vector3(42.42, -2561.49, 6.14),
            spawn = vector4(40.64, -2558.57, 6.0, 255.54),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    topsecret = { -- Airport Location
        managed = true,
        shopLabel = 'LS Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(528.33, -183.99, 54.0),
        duty = vector3(549.33, -195.92, 58.15),
        stash = vector3(560.13, -181.38, 54.51),
        paint = vector3(556.45, -166.14, 54.51),
        vehicles = {
            withdraw = vector3(vector3(545.81, -161.75, 54.49)),
            spawn = vector4(539.94, -156.66, 54.49, 86.57),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    bennys = { -- Default Bennys Location
        managed = true,
        shopLabel = 'Benny\'s Motorworks',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-211.73, -1325.28, 30.89),
        duty = vector3(-206.05, -1329.62, 34.89),
        stash = vector3(-199.58, -1314.65, 31.08),
        paint = vector3(-199.06, -1324.33, 31.13),
        vehicles = {
            withdraw = vector3(0, 0, 0),
            spawn = vector4(-184.05, -1291.07, 31.3, 174.99),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    beeker = { -- Paleto Location
        managed = true,
        shopLabel = 'Beeker\'s Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(109.95, 6627.34, 31.79),
        duty = vector3(101.74, 6620.04, 32.95),
        stash = vector3(107.00, 6629.88, 31.81),
        paint = vector3(102.17, 6626.08, 31.79),
        vehicles = {
            withdraw = vector3(107.08, 6614.90, 31.96),
            spawn = vector4(110.91, 6609.32, 31.81, 315.11),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
}
