/// @desc 


for (var i = 0; i < array_length(pixels); i++) {
	var _index = pixels[i];
	
	if point_in_circle(oPlayer.x,oPlayer.y,xstart,ystart,300) {
		_index.xNormal = Approach(_index.xNormal,oPlayer.x,3);
		_index.yNormal = Approach(_index.yNormal,oPlayer.y,3);
	} else {
		_index.xNormal = Approach(_index.xNormal,startX+_index.xSpot-sprite_xoffset,3);
		_index.yNormal = Approach(_index.yNormal,startY+_index.ySpot-sprite_yoffset,3);
	}
	
	_index.dir = ApproachCircle(_index.dir,point_direction(_index.x,_index.y,_index.xNormal,_index.yNormal),_index.turnSpd);
	
	_index.x += lengthdir_x(_index.spd,_index.dir);
	_index.y += lengthdir_y(_index.spd,_index.dir);
}