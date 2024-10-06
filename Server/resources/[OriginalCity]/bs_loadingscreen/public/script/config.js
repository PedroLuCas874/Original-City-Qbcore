const config = {
    autoSlideInterval: 3000, // Tempo de transição automática do slide (ms)
    autoPlay: true, // Valor booleano para controlar a reprodução automática
    musicVolume: 0.05, // Nível de volume padrão (0 = 0%; 0.5 = 50%; 1 = 100%)

    logoURL: '/public/images/icon.png', // logo url

    background: {
        type: "image", // "image" ou "video"
        url: "/public/images/background.png", // ID do vídeo do YouTube ou caminho do arquivo de imagem         url: "0zLiPEJTA0A",
        videoProvider: "youtube" // Somente para vídeos do YouTube
    },

    socialMedia: [
        // Máximo de 4 itens
        { name: "Web", icon: "/public/images/web.svg", link: "https://discord.gg/5CZX9RJ2YV" },
        { name: "Discord", icon: "/public/images/discord.svg", link: "https://discord.gg/5CZX9RJ2YV" },
        { name: "YouTube", icon: "/public/images/youtube.svg", link: "https://discord.gg/5CZX9RJ2YV" },
        { name: "Instagram", icon: "/public/images/insta.svg", link: "https://discord.gg/5CZX9RJ2YV" }
    ],

    images: [
        '/public/images/images_1.png',
        '/public/images/images_2.png',
        '/public/images/images_3.png',
        '/public/images/images_4.png',
        // Você pode adicionar mais imagens
    ],

    songs: [
        // Você pode adicionar mais músicas
        {
            title: 'SleepWalking',
            artist: 'The Chain Gang Of 1974',
            src: '/public/music/Chain-Gang-of-1974-Sleepwalking.mp3',
            img: '/public/images/sleepwalking.jpg'
        },
        {
            title: 'The Setup',
            artist: 'Favored Nations',
            src: '/public/music/The-Setup.mp3',
            img: '/public/images/the-setup.jpg'
        },
        {
            title: 'Welcome The Los Santos',
            artist: 'Oh No',
            src: '/public/music/Welcome-To-Los-Santos.mp3',
            img: '/public/images/welcome-lst.jpg'
        },
    ],

    locales: {
        headerTitle: "Original City", // Título do cabeçalho
        headerSubtitles: [
            "Bem-vindo a este servidor de RP único",
            "Experimente a aventura definitiva de roleplay",
            "Junte-se ao nosso mundo imersivo de RP",
          // Você pode adicionar mais subtítulos
        ],
        cardTitles: [
            "Bem-vindo ao Original City",
            "Explore Nosso Servidor de Roleplay Único",
            "Junte-se à Nossa Empolgante Comunidade de Roleplay"
        // Você pode adicionar mais descrições
        ],
        cardDescriptions: [
            "Bem-vindo ao Original City! Temos espaço para todos os tipos de profissões. Você pode nos contatar no Discord para scripts realistas, carros incomuns e sons especiais, o melhor servidor para roleplay realista e tirar suas dúvidas - temos uma equipe ativa esperando por você (24/7)! Se você esperou muito por um servidor de qualidade e ainda não encontrou, prometemos que vai aproveitar cada momento conosco. Vamos garantir a melhor experiência. Obrigado por se juntar a nós no servidor.",
            "Descubra um novo mundo de roleplay no Original City! Nosso servidor oferece uma variedade de profissões e experiências realistas. Junte-se à nossa comunidade ativa e vivencie o roleplay como nunca antes.",
            "Procurando pelo melhor servidor de roleplay? Você encontrou! No Original City, oferecemos a experiência de roleplay mais imersiva, com scripts realistas, carros personalizados e suporte dedicado. Junte-se a nós agora e comece sua aventura!"
        // Você pode adicionar mais descrições
        ],
        serverGalleryTitle: "Galeria do Servidor", // Título para a seção de galeria do servidor
        serverGalleryDescription: "Selecionado especialmente para você", // Descrição para a seção de galeria do servidor
        socialMediaText: "Não se esqueça de visitar", // Texto para a seção de mídias sociais
   
    },
};
