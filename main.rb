require 'ruby2d'
require_relative 'background'

player_red_ship = Image.new('Assets/spaceship_red.png', width: 100, height: 80, x: 100, y: 320, z: 2, rotate: 270)
player_yellow_ship = Image.new('Assets/spaceship_yellow.png', width: 100, height: 80, x: 1080, y: 320, z: 2, rotate: 90)
middle_line = Line.new(x1: 640, y1: 0, x2: 640, y2: 720, width: 5, color: 'purple', z: 3)

@x_speed = 0
@y_speed = 0

if player_red_ship.x > 0 && player_red_ship.x < 540 && player_red_ship.y > 0 && player_red_ship.y < 640
    on :key_down do |event|
        if event.key == 'w'
            @y_speed = -5
            @x_speed = 0
        elsif event.key == 's'
            @y_speed = 5
            @x_speed = 0
        elsif event.key == 'a'
            @x_speed = -5
            @y_speed = 0
        elsif event.key == 'd'
            @x_speed = 5
            @y_speed = 0
        end
    end
elsif player_red_ship.x < 0 || player_red_ship.x > 540 || player_red_ship.y < 0 || player_red_ship.y > 640
    @x_speed = 0
    @y_speed = 0

end


update do
    player_red_ship.x += @x_speed
    player_red_ship.y += @y_speed
end

show