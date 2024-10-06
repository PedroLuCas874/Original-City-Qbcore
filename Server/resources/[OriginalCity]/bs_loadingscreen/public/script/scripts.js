document.addEventListener('DOMContentLoaded', function () {
    // Selecting DOM elements

    const slidesContainer = document.querySelector('.slides');
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');
    const sliderContainer = document.querySelector('.slider');
    const fullscreenOverlay = document.querySelector('.fullscreen-overlay');
    const fullscreenImg = document.querySelector('.fullscreen-img');
    const closeBtn = document.querySelector('.close-btn');
    
    // Initializing variables
    let currentIndex = 0;
    const images = config.images; // Assuming config.images contains image URLs

    let autoSlideInterval;

    // Function to load images into the gallery
    function loadImages() {
        slidesContainer.innerHTML = '';
        sliderContainer.innerHTML = ''; 

        images.forEach((image, index) => {
            const img = document.createElement('img');
            img.src = image;
            img.addEventListener('click', () => openFullscreen(index)); // Open fullscreen on image click
            slidesContainer.appendChild(img);
        });

        updateDots(currentIndex); // Update slider dots
        showImage(currentIndex); // Show initial image
        startAutoSlide(); // Start automatic sliding if configured
    }

    // Function to display the image at a given index
    function showImage(index) {
        const images = slidesContainer.querySelectorAll('img');
        images.forEach((img, i) => {
            img.classList.remove('active', 'previous', 'next');
            if (i === index) {
                img.classList.add('active');
            } else if (i === (index - 1 + images.length) % images.length) {
                img.classList.add('previous');
            } else if (i === (index + 1) % images.length) {
                img.classList.add('next');
            }
        });

        const slideWidth = slidesContainer.children[0].clientWidth + 20;
        const offset = (index * slideWidth) - ((slidesContainer.clientWidth - slideWidth) / 2);
        slidesContainer.style.transform = `translateX(-${offset}px)`; // Center current image

        updateDots(index); // Update slider dots
    }

    // Function to update the slider dots based on the current image index
    function updateDots(index) {
        sliderContainer.innerHTML = '';

        const totalDots = images.length;
        const dotsToShow = 4;
        let start = Math.max(index - Math.floor(dotsToShow / 2), 0);
        let end = Math.min(start + dotsToShow, totalDots);

        if (end - start < dotsToShow) {
            start = Math.max(end - dotsToShow, 0);
        }

        for (let i = start; i < end; i++) {
            const dot = document.createElement('div');
            dot.classList.add('slider-dot');
            if (i === index) {
                dot.classList.add('active');
            }
            dot.addEventListener('click', () => {
                currentIndex = i;
                showImage(currentIndex);
                resetAutoSlide(); // Reset auto slide on dot click
            });
            sliderContainer.appendChild(dot);
        }
    }

    // Function to open fullscreen view of an image
    function openFullscreen(index) {
        fullscreenImg.src = images[index];
        fullscreenOverlay.style.display = 'flex';
    }

    // Function to close fullscreen view
    function closeFullscreen() {
        fullscreenOverlay.style.display = 'none';
    }

    // Function to show previous image
    function prevImage() {
        currentIndex = (currentIndex - 1 + images.length) % images.length;
        showImage(currentIndex);
        resetAutoSlide(); // Reset auto slide on previous button click
    }

    // Function to show next image
    function nextImage() {
        currentIndex = (currentIndex + 1) % images.length;
        showImage(currentIndex);
        resetAutoSlide(); // Reset auto slide on next button click
    }

    // Function to start automatic sliding
    function startAutoSlide() {
        autoSlideInterval = setInterval(() => {
            nextImage();
        }, config.autoSlideInterval); // Assuming config.autoSlideInterval specifies interval duration
    }

    // Function to reset automatic sliding
    function resetAutoSlide() {
        clearInterval(autoSlideInterval);
        startAutoSlide();
    }

    // Event listeners for navigation buttons and fullscreen close button
    prevBtn.addEventListener('click', prevImage);
    nextBtn.addEventListener('click', nextImage);
    closeBtn.addEventListener('click', closeFullscreen);

    // Initial load of images and configuration
    loadImages();


    const logoContainer = document.querySelector('.logo-container');
   

    if (config.logoURL) {
        const logoImg = document.createElement('img');
        logoImg.src = config.logoURL;
        logoImg.alt = 'Server Logo';
        logoContainer.appendChild(logoImg);
    } else {
        const logoSVG = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
      
       
        logoSVG.setAttribute('fill', 'white');
        logoSVG.innerHTML = `
             <path
                    d="M60.6667 65H46.5156C46.1987 65 45.2833 61.9477 43.7369 55.8594C38.369 37.1475 35.276 26.214 34.4825 23.0344L43.6096 14.0292H43.8777C45.1073 17.875 50.7939 34.8183 60.9375 64.8592L60.6667 65ZM33.4262 19.1858H33.2962C33.175 18.7488 33.0863 18.3035 33.0308 17.8533V17.5879C35.9177 14.565 38.8724 11.6077 41.8925 8.71813C42.2446 9.24896 42.4233 9.68229 42.4233 10.0479V10.1833C39.4746 13.2341 36.4751 16.2353 33.4262 19.1858ZM16.2337 29.5208H16.0983C17.9111 23.7828 19.0152 20.8262 19.4106 20.651L39.2492 0.928958C39.4658 0.928958 39.9479 2.34812 40.6927 5.15937L16.2337 29.5208ZM19.9442 18.6496H19.8088C23.8694 6.34472 26.0325 0.128194 26.2979 0H38.4719V0.135417C32.341 6.35435 26.1649 12.5286 19.9442 18.6577V18.6496ZM12.6587 39.975H12.5233C12.9729 37.8138 14.0237 36.1346 15.7029 34.951C20.791 29.7235 25.9463 24.5619 31.1675 19.4675H31.3029C30.986 21.2875 30.2873 22.6498 29.1877 23.5842L12.6587 39.975ZM4.32792 65L4.0625 64.8646C7.85056 53.5654 9.88 47.7425 10.1508 47.3958L28.405 29.2662V29.4017C27.7117 32.175 24.3046 44.0456 18.2271 65H4.32792Z"
            
            
            />
        `
        ;
        
        logoContainer.appendChild(logoSVG);
    }
    // Additional configuration for other elements (assuming these elements exist in HTML)
    const backgroundElement = document.getElementById('background');
    const headerTitleElement = document.getElementById('headerTitle');
    const headerSubtitleElement = document.getElementById('headerSubtitle');
    const cardTitleElement = document.getElementById('cardTitle');
    const cardDescriptionElement = document.getElementById('cardDescription');
    const serverGalleryTitleElement = document.getElementById('serverGalleryTitle');
    const serverGalleryDescriptionElement = document.getElementById('serverGalleryDescription');
    const socialMediaTextElement = document.getElementById('socialMediaText');
    const socialMediaLinkElement = document.getElementById('socialMediaLink');
    const socialMediaLinksElement = document.getElementById('socialMediaLinks');

    // Assuming config.locales contains localized strings and config.socialMedia contains social media data

    // Setting random header subtitle

    headerTitleElement.textContent = config.locales.headerTitle;
    
    const randomHeaderSubtitleIndex = Math.floor(Math.random() * config.locales.headerSubtitles.length);
    const randomHeaderSubtitle = config.locales.headerSubtitles[randomHeaderSubtitleIndex];
    headerSubtitleElement.textContent = randomHeaderSubtitle;

    // Setting random card title and description
    const randomCardIndex = Math.floor(Math.random() * config.locales.cardTitles.length);
    const randomCardTitle = config.locales.cardTitles[randomCardIndex];
    const randomCardDescription = config.locales.cardDescriptions[randomCardIndex];
    cardTitleElement.textContent = randomCardTitle;
    cardDescriptionElement.textContent = randomCardDescription;

    // Setting server gallery title and description
    serverGalleryTitleElement.textContent = config.locales.serverGalleryTitle;
    serverGalleryDescriptionElement.textContent = config.locales.serverGalleryDescription;

    // Setting social media text and link
    socialMediaTextElement.textContent = config.locales.socialMediaText;
    socialMediaLinkElement.textContent = config.locales.socialMediaLinkText;
    socialMediaLinkElement.href = config.locales.socialMediaLinkURL;

    // Adding social media links
    config.socialMedia.forEach(media => {
        const listItem = document.createElement('li');
        const link = document.createElement('a');
        link.href = "#"; // Placeholder link
        link.addEventListener('click', function(event) {
            event.preventDefault();
            navigator.clipboard.writeText(media.link).then(function() {
                showCopiedMessage(link, media.name); // Show copied message on link click
            });
        });
        const icon = document.createElement('img');
        icon.src = media.icon; // Assuming media.icon contains icon URLs
        icon.alt = media.name;
        link.appendChild(icon);
        listItem.appendChild(link);
        socialMediaLinksElement.appendChild(listItem);
    });

    // Setting background element based on config.background type (assuming config.background.type is "video" or "image")
    if (config.background.type === "video") {
        const iframe = document.createElement('iframe');
        iframe.src = `https://www.youtube.com/embed/${config.background.url}?autoplay=1&mute=1&loop=1&playlist=${config.background.url}`;
        iframe.frameBorder = "0";
        iframe.allow = "autoplay; encrypted-media";
        iframe.allowFullscreen = true;
        iframe.style.width = "100%";
        iframe.style.height = "100%";
        iframe.style.position = "absolute";
        iframe.style.top = "0";
        iframe.style.left = "0";
        backgroundElement.appendChild(iframe);
    } else {
        backgroundElement.style.backgroundImage = `url(${config.background.url})`;
        backgroundElement.style.backgroundSize = "cover";
        backgroundElement.style.backgroundPosition = "center";
        backgroundElement.style.position = "absolute";
        backgroundElement.style.width = "100%";
        backgroundElement.style.height = "100%";
        backgroundElement.style.top = "0";
        backgroundElement.style.left = "0";
    }

    // Function to display copied message when social media link is clicked
    function showCopiedMessage(element, name) {
        const message = document.createElement('div');
        message.textContent = `${name} link copied!`;
        message.style.position = 'absolute';
        message.style.top = '-20px';
        message.style.left = '50%';
        message.style.transform = 'translateX(-50%)';
        message.style.padding = '5px 10px';
      
        message.style.color = 'white';
        message.style.borderRadius = '5px';
        message.style.fontSize = '7px';
        element.parentElement.appendChild(message);
        
        setTimeout(() => {
            message.remove();
        }, 2000);
    }



    
// Assuming these elements are present in the HTML for music player functionality
const playBtn = document.getElementById('play');
const pauseBtn = document.getElementById('pause');
const prevmusicBtn = document.getElementById('prev');
const nextmusicBtn = document.getElementById('next');
const progress = document.getElementById('progress');
const volume = document.getElementById('volume');
const currentTimeElem = document.getElementById('current-time');
const durationElem = document.getElementById('duration');
const songTitleElem = document.querySelector('.song-info h2');
const songArtistElem = document.querySelector('.song-info p');
const albumArtImg = document.getElementById('album-art-img');
const volumeRange = document.getElementById('volume');

// Initializing variables for music player
let isPlaying = false;
let currentSongIndex = 0;
const musicVolume = config.musicVolume; // Assuming config.musicVolume specifies initial volume
const songs = config.songs; // Assuming config.songs contains song data

// Creating an Audio object for playing songs
const audio = new Audio(songs[currentSongIndex].src);
audio.volume = musicVolume;


    // Auto play music if configured
    if (config.autoPlay) {
        audio.play();
        playBtn.style.display = 'none';
        pauseBtn.style.display = 'inline';
        isPlaying = true;
    } else {
        playBtn.style.display = 'inline';
        pauseBtn.style.display = 'none';
        isPlaying = false;
    }
    updateSongDetails(); // Update song details on initial load

    
// Event listener for play button click
playBtn.addEventListener('click', () => {
    audio.play();
    playBtn.style.display = 'none';
    pauseBtn.style.display = 'inline';
    isPlaying = true;
});

// Event listener for pause button click
pauseBtn.addEventListener('click', () => {
    audio.pause();
    playBtn.style.display = 'inline';
    pauseBtn.style.display = 'none';
    isPlaying = false;
});

// Event listener for previous button click
prevmusicBtn.addEventListener('click', () => {
    currentSongIndex = (currentSongIndex - 1 + songs.length) % songs.length;
    switchSong();
});

// Event listener for next button click
nextmusicBtn.addEventListener('click', () => {
    currentSongIndex = (currentSongIndex + 1) % songs.length;
    switchSong();
});

// Event listener for updating progress bar based on audio playback
audio.addEventListener('timeupdate', () => {
    const currentTime = audio.currentTime;
    const duration = audio.duration;
    progress.value = (currentTime / duration) * 100; // Update progress bar value
    currentTimeElem.textContent = formatTime(currentTime); // Update current time display
    durationElem.textContent = formatTime(duration); // Update duration display
});

// Event listener for adjusting audio playback based on progress bar input
progress.addEventListener('input', () => {
    audio.currentTime = (progress.value / 100) * audio.duration; // Update audio current time
});

// Event listener for adjusting volume based on volume range input
volume.addEventListener('input', () => {
    audio.volume = volume.value / 100; // Update audio volume
    updateVolumeDisplay(volume.value); // Update volume display
});

// Function to update volume display
function updateVolumeDisplay(value) {
    volumeRange.value = value;
}

// Function to switch to the selected song
function switchSong() {
    audio.src = songs[currentSongIndex].src;
    audio.play();
    isPlaying = true;
    playBtn.style.display = 'none';
    pauseBtn.style.display = 'inline';
    updateSongDetails(); // Update song details for the new song
}

// Function to update song details (title, artist, album art)
function updateSongDetails() {
    songTitleElem.textContent = songs[currentSongIndex].title;
    songArtistElem.textContent = songs[currentSongIndex].artist;
    albumArtImg.src = songs[currentSongIndex].img;
    albumArtImg.onload = updateAlbumArtShadow(); // Update album art shadow after image loads
}


function updateAlbumArtShadow() {
    const img = new Image();
    img.src = songs[currentSongIndex].img;
    img.crossOrigin = 'Anonymous'; // Cross-origin problem remove
    img.onload = function () {
        Vibrant.from(img).getPalette()
            .then(palette => {
                const vibrantColor = palette.Vibrant.hex;
                const albumArtDiv = document.getElementById('album-art-img');
                albumArtDiv.style.backgroundImage = songs[currentSongIndex].img;
                albumArtDiv.style.filter = `drop-shadow(0 0px 4.5px ${vibrantColor})`; // Apply drop shadow effect
            })
            .catch(err => console.error('Vibrant.js Error:', err));
    };
    img.onerror = function () {
        console.error('Image failed to load:', songs[currentSongIndex].img);
    };
}


// Function to format time in MM:SS format
function formatTime(seconds) {
    const minutes = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${minutes}:${secs < 10 ? '0' : ''}${secs}`;
}


updateAlbumArtShadow();

 
// Assuming configuration and content update functions exist for these elements


});

