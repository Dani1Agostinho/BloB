/// @desc 

size = 4

pixels = []

startX = xstart;
startY = ystart;

alarm[0] = 30;

for (var i = 0; i < sprite_width; i += size) {
	for (var j = 0; j < sprite_height; j += size) {
		array_push(pixels,{
		x: x-sprite_xoffset+i,
		y: y-sprite_yoffset+j,
		dir: irandom(360),
		xSpot: i,
		ySpot: j,
		turnSpd: random_range(10,20),
		xNormal: x+i-sprite_xoffset,
		yNormal: y+j-sprite_yoffset,
		spd: random_range(3,6)
		});
	}
}