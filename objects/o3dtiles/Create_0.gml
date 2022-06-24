/// @desc

surface = noone;

function LayerBegin() {
	if event_type == ev_draw
	   {
	   if event_number == 0 {
	with(o3DTiles) {
		if !surface_exists(surface) surface = surface_create(room_width,room_height);
		surface_set_target(surface);
		draw_clear_alpha(c_black,0);
	}
	   }
	   }
}

function LayerEnd() {
	if event_type == ev_draw
	   {
	   if event_number == 0 {
		    if (surface_get_target() != application_surface) surface_reset_target();

			//Paralax
			with(o3DTiles) {
				var _x = camera_get_view_x(view_camera[0]);
				var _y = camera_get_view_y(view_camera[0]);
				var _w = camera_get_view_width(view_camera[0]);
				var _h = camera_get_view_height(view_camera[0]);
				for(var i = -16; i <= 16; i++) {
					var scale = (_w+i)/_w;
					draw_surface_part_ext(surface,_x,_y,_w,_h,_x-i/2,_y-(i/2)/5,scale,scale,c_white,1);
				}
			}
			draw_text(0,0,string(view_xport[0]));
	   }
	  }
}

layer_script_begin(layer_get_id("Wall"),LayerBegin);
layer_script_end(layer_get_id("Wall"),LayerEnd);