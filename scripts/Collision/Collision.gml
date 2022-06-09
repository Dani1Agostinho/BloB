function collision(_x,_y) {
	return tilemap_get_at_pixel(global.tileset,bbox_left-x+_x,bbox_top-y+_y) or
	tilemap_get_at_pixel(global.tileset,bbox_right-x+_x,bbox_top-y+_y) or
	tilemap_get_at_pixel(global.tileset,bbox_left-x+_x,bbox_bottom-y+_y) or
	tilemap_get_at_pixel(global.tileset,bbox_right-x+_x,bbox_bottom-y+_y);
}


