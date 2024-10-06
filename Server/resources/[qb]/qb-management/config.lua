-- Zones for Menus
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    police = {
        vector3(460.7, -985.65, 30.73),
    },
    ambulance = {
        vector3(-661.32, 310.34, 92.74),
    },
    cardealer = {
        vector3(-32.94, -1114.64, 26.42),
    },
    paradise = { -- Paradise
        vector3(-1581.78, -843.93, 10.1),
    },
    bennys = { -- Bennys
        vector3(-204.35, -1334.72, 34.89),
    },
    topsecret = { -- TopSecret
        vector3(559.27, -197.56, 58.15),
    },
    mechanic2 = { -- TopSecret
        vector3(53.67, -2573.44, 6.26),        
    },
}

Config.GangMenus = {
    lostmc = {
        vector3(0, 0, 0),
    },
    ballas = {
        vector3(119.57, -1969.03, 21.33),
    },
    vagos = {
        vector3(345.03, -2021.89, 22.39),
    },
    cartel = {
        vector3(0, 0, 0),
    },
    families = {
        vector3(-131.17, -1605.91, 35.03),
    },
}
