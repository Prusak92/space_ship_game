set title: "Space ship game"
background_image = Image.new(
    'Assets/space.png',
    width: 1280,
    height: 720,
    z: 1)

background_sound = Music.new(
    'Assets/tech-background-51278.mp3',
    loop: true,)

set background: background_image, width: 1280, height: 720
background_sound.volume = 10
background_sound.play