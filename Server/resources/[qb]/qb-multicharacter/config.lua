Config = {}
Config.Interior = vector3(-845.35, -232.11, 61.02) -- Interior a ser carregado onde os personagens são visualizados
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Coordenadas padrão de spawn se você tiver os apartamentos iniciais desativados
Config.PedCoords = vector4(-844.17, -231.81, 61.02, 56.47) -- Cria o ped de visualização nessas coordenadas
Config.HiddenCoords = vector4(-850.24, -234.73, 61.02, 0.07) -- Esconde seu ped real enquanto você está na seleção
Config.CamCoords = vector4(-846.09, -230.64, 61.02, 240.6) -- Coordenadas da câmera para a tela de visualização do personagem
Config.EnableDeleteButton = true -- Define se o jogador pode deletar o personagem ou não
Config.customNationality = false -- Define se a nacionalidade é personalizada ou limitada à lista de países
Config.SkipSelection = false -- Pula a seleção de spawn e coloca o jogador na última localização

Config.DefaultNumberOfCharacters = 5 -- Define o número máximo padrão de personagens (máximo de 5 personagens definido por padrão)
Config.PlayersNumberOfCharacters = { -- Define o número máximo de personagens do jogador por licença rockstar (você pode encontrar essa licença no banco de dados do seu servidor na tabela de jogadores)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}
