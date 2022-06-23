/// @desc 

size = 3

pixels = []

for (var i = 0; i < sprite_width; i += size) {
	for (var j = 0; j < sprite_height; j += size) {
		array_push(pixels,{
		x: x-sprite_xoffset+i,
		y: y-sprite_yoffset+j,
		dir: irandom(360),
		xSpot: i,
		ySpot: j,
		turnSpd: random_range(10,20)
		});
	}
}