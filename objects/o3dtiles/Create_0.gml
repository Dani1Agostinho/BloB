/// @desc

sprite = noone;

function Draw3DTiles() {
	if event_type == ev_draw {
		if event_number == 0 {
			//Paralax
			with(o3DTiles) {
				var _x = camera_get_view_x(view_camera[0]);
				var _y = camera_get_view_y(view_camera[0]);
				var _w = camera_get_view_width(view_camera[0]);
				var _h = camera_get_view_height(view_camera[0]);
				
				if sprite == noone {
					var _surface = surface_create(room_width,room_height);
					surface_set_target(_surface);
					draw_tilemap(layer_tilemap_get_id(other.layer),0,0);
					surface_reset_target();
					
					sprite = sprite_create_from_surface(_surface,0,0,room_width,room_height,false,false,0,0);
					surface_free(_surface);
				}
				
				for(var i = -16; i <= 16; i += 4) {
					draw_sprite_part_ext(sprite,0,_x-8,_y-8,_w+16,_h+16,_x-i/2-8,_y-(i/2)/5-8,(_w+i)/_w,(_w+i)/_w,c_white,1);
				}
			}
		}
	}
}

layer_script_end(layer_get_id("Wall"),Draw3DTiles);