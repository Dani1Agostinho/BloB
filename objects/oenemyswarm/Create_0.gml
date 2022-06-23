/// @desc 

pixels = []

for (var i = 0; i < sprite_width; i += 4) {
	for (var j = 0; j < sprite_height; j += 4) {
		array_push(pixels,{
		x: x,
		y: y,
		dir: 0,
		xSpot: i,
		ySpot: j
		});
	}
}