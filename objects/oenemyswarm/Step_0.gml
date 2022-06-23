/// @desc 

if 

for (var i = 0; i < array_length(pixels); i++) {
	var _index = pixels[i];
	_index.dir = ApproachCircle(_index.dir,point_direction(_index.dir.x,_index.dir.y,x+_index.xSpot-sprite_xoffset,y+_index.ySpot-sprite_yoffset),5);
	
	_index.x += lengthdir_x(2,_index.dir);
	_index.y += lengthdir_y(2,_index.dir);
}