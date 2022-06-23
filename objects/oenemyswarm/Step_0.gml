/// @desc 

if point_in_circle(oPlayer.x,oPlayer.y,xstart,ystart,300) {
	x = Approach(x,oPlayer.x,5);
	y = Approach(y,oPlayer.y,5);
} else {
	x = Approach(x,xstart,5);
	y = Approach(y,ystart,5);
}

for (var i = 0; i < array_length(pixels); i++) {
	var _index = pixels[i];
	_index.dir = ApproachCircle(_index.dir,point_direction(_index.x,_index.y,x+_index.xSpot-sprite_xoffset,y+_index.ySpot-sprite_yoffset),_index.turnSpd);
	
	_index.x += lengthdir_x(4,_index.dir);
	_index.y += lengthdir_y(4,_index.dir);
}