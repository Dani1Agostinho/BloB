/// @desc 

for (var i = 0; i < array_length(pixels); i++) {
	var _index = pixels[i];
	draw_sprite_part(sprite_index,image_index,_index.xSpot,_index.ySpot,size,size,_index.x,_index.y);	
}