# qb-ambulancejob
EMS Job and Death/Wound Logic for QB-Core Framework :ambulance:

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core) (Required)
- [qb-phone](https://github.com/qbcore-framework/qb-phone) (Required)
- [qb-target](https://github.com/BerkieBb/qb-target) (Optional)
- [PolyZone](https://github.com/mkafrin/PolyZone) (Required)

# Server.cfg Convar Update
- Global DrawTextUi Option
```
setr UseTarget false
``` 

- Global Target Option
```
setr UseTarget true
```
## Tradução
```
Configurações
Config = {}
Config.MinimalDoctors = 2                      -- Quantos jogadores com o emprego de ambulância são necessários para impedir que o sistema de check-in do hospital seja usado
Config.WipeInventoryOnRespawn = true/false     -- Habilitar ou desabilitar a remoção de todos os itens dos jogadores quando eles ressurgirem no hospital
Config.Locations = {}                          -- Edite os vários pontos de interação para os jogadores ou crie novos
Config.AuthorizedVehicles = {}                 -- Veículos que os jogadores podem usar com base no nível de emprego de ambulância
Config.Helicopter = "polmav"                   -- Modelo de helicóptero que os jogadores com o emprego de ambulância podem usar
Config.Items = {}                              -- Itens encontrados na loja de ambulância que os jogadores com o emprego de ambulância podem comprar
Config.BillCost = 2000                         -- Preço que os jogadores são cobrados por usar o sistema de check-in do hospital
Config.DeathTime = 300                         -- Quanto tempo o cronômetro é para os jogadores sangrarem completamente e ressurgirem no hospital
Config.PainkillerInterval = 60                 -- Define a duração do efeito de analgésicos (por unidade)
Config.HealthDamage = 5                        -- Dano mínimo à saúde antes de verificar lesões
Config.ArmorDamage = 5                         -- Dano mínimo à armadura antes de verificar lesões
Config.ForceInjury = 35                        -- Quantidade máxima de dano que um jogador pode sofrer antes que danos nos membros e efeitos sejam forçados a ocorrer
Config.AlwaysBleedChance = 70 -- Defina a chance, de 100, de que se um jogador for atingido por uma arma, que também tem uma chance aleatória, causará sangramento
Config.MessageTimer = 12 -- Quanto tempo levará para exibir a mensagem de dano no membro/sangramento
Config.AIHealTimer = 20 -- Quanto tempo levará para ser curado após o check-in, em segundos
Config.BleedTickRate = 30 -- Quantidade de tempo, em segundos, entre os "ticks" de sangramento
Config.BleedMovementTick = 10 -- Quantos segundos são retirados da taxa de "tick" de sangramento se o jogador estiver caminhando, correndo ou sprintando
Config.BleedMovementAdvance = 3 -- Quanto tempo o movimento enquanto sangra adiciona
Config.BleedTickDamage = 8 -- O dano base que é multiplicado pelo nível de sangramento toda vez que ocorre um "tick" de sangramento
Config.FadeOutTimer = 2 -- Quantos "ticks" de sangramento ocorrem antes de começar o desmaio
Config.BlackoutTimer = 10 -- Quantos "ticks" de sangramento ocorrem antes de perder a consciência
Config.AdvanceBleedTimer = 10 -- Quantos "ticks" de sangramento ocorrem antes que o nível de sangramento aumente
Config.HeadInjuryTimer = 30 -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão na cabeça
Config.ArmInjuryTimer = 30 -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão no braço
Config.LegInjuryTimer = 15 -- Quanto tempo, em segundos, ocorre a chance de efeitos de lesão na perna
Config.HeadInjuryChance = 25 -- A chance, em porcentagem, de que os efeitos colaterais de lesão na cabeça sejam aplicados
Config.LegInjuryChance = { -- A chance, em porcentagem, de que os efeitos colaterais de lesão na perna sejam aplicados
    Running = 50,
    Walking = 15
Config.MajorArmoredBleedChance = 45 -- A chance, em porcentagem, de que um jogador sofrerá um efeito de sangramento ao sofrer dano pesado enquanto usa armadura
Config.DamageMinorToMajor = 35 -- Quanto dano precisa ser aplicado para que uma arma pequena seja considerada um evento de dano grave. Coloque em 100 se quiser desativar
Config.AlertShowInfo = 2 -- Quantas lesões um jogador deve ter antes de ser alertado sobre elas
Config.WeaponClasses = {} -- Definir números das classes de armas do GTA
Config.MinorInjurWeapons = {} -- Definir quais armas causam pequenas lesões
Config.MajorInjurWeapons = {} -- Definir quais armas causam lesões graves
Config.AlwaysBleedChanceWeapons = {} -- Definir quais armas sempre causarão sangramento
Config.ForceInjuryWeapons = {} -- Definir quais armas sempre causarão lesões
Config.CriticalAreas = {} -- Definir áreas do corpo que sempre causarão sangramento, esteja ou não usando armadura
Config.StaggerAreas = {} -- Definir áreas do corpo que sempre causarão cambaleio, esteja ou não usando armadura
Config.WoundStates = {} -- Traduzir alertas de feridas
Config.BleedingStates = {} -- Traduzir alertas de sangramento
Config.MovementRate = {} -- Definir a taxa de movimento do jogador com base no nível de dano que eles têm
Config.Bones = {} -- Corresponder os números de hash dos ossos ao seu rótulo
Config.BoneIndexes = {} -- Corresponder os rótulos dos ossos ao seu número de hash
Config.Weapons = {} -- Corresponder os nomes das armas ao número da sua classe
Config.VehicleSettings = {} -- Habilitar ou desabilitar extras de veículos ao pegá-los no spawner de veículos do emprego de ambulância
Itens

ifaks - Alivia o estresse do jogador e cura +10 de vida.
bandage (bandagem) - Cura o jogador em +10 de vida e tem 50% de chance de remover 1 nível de sangramento.
firstaid (primeiros socorros) - Cura completamente o jogador mais próximo, desde que ele esteja em estado crítico.
painkillers (analgésicos) - Para o sangramento temporariamente, mas o efeito desaparece com o tempo.
´´´

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
