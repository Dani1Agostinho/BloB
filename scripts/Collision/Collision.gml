function collision(_x,_y) {
	return tilemap_get_at_pixel(global.tileset,ceil(bbox_left-x+_x),ceil(bbox_top-y+_y)) or
	tilemap_get_at_pixel(global.tileset,ceil(bbox_right-x+_x),ceil(bbox_top-y+_y)) or
	tilemap_get_at_pixel(global.tileset,ceil(bbox_left-x+_x),ceil(bbox_bottom-y+_y)) or
	tilemap_get_at_pixel(global.tileset,ceil(bbox_right-x+_x),ceil(bbox_bottom-y+_y));
}


