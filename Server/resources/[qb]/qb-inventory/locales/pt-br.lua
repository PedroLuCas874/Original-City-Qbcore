local Translations = {
    progress = {
        ['snowballs'] = 'Coletando bolas de neve..',
    },
    notify = {
        ['failed'] = 'Falhou',
        ['canceled'] = 'Cancelado',
        ['vlocked'] = 'Veículo Trancado',
        ['notowned'] = 'Você não possui este item!',
        ['missitem'] = 'Você não tem este item!',
        ['nonb'] = 'Não há ninguém por perto!',
        ['noaccess'] = 'Não Acessível',
        ['nosell'] = 'Você não pode vender este item..',
        ['itemexist'] = 'O item não existe',
        ['notencash'] = 'Você não tem dinheiro suficiente..',
        ['noitem'] = 'Você não tem os itens corretos..',
        ['gsitem'] = 'Você não pode se dar um item!',
        ['tftgitem'] = 'Você está muito longe para dar itens!',
        ['infound'] = 'Item que você tentou dar não encontrado!',
        ['iifound'] = 'Item incorreto encontrado, tente novamente!',
        ['gitemrec'] = 'Você recebeu ',
        ['gitemfrom'] = ' de ',
        ['gitemyg'] = 'Você deu ',
        ['gitinvfull'] = 'O inventário do outro jogador está cheio!',
        ['giymif'] = 'Seu inventário está cheio!',
        ['gitydhei'] = 'Você não tem o suficiente do item',
        ['gitydhitt'] = 'Você não tem itens suficientes para transferir',
        ['navt'] = 'Tipo inválido..',
        ['anfoc'] = 'Argumentos não preenchidos corretamente..',
        ['yhg'] = 'Você deu ',
        ['cgitem'] = 'Não pode dar o item!\'',
        ['idne'] = 'O item não existe',
        ['pdne'] = 'O jogador não está online',
    },
    inf_mapping = {
        ['opn_inv'] = 'Abrir Inventário',
        ['tog_slots'] = 'Alterna slots de teclas de atalho',
        ['use_item'] = 'Usa o item no slot ',
    },
    menu = {
        ['vending'] = 'Máquina de Venda',
        ['bin'] = 'Abrir Lixeira',
        ['craft'] = 'Craftar',
        ['o_bag'] = 'Abrir Bolsa',
    },
    interaction = {
        ['craft'] = '~g~E~w~ - Craftar',
    },
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
