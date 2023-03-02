//Update Destination
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
	
	if ((follow).object_index == oPlayerdead)
	{
	
		x = xto;
		y = yto;
		
	}

}



//Update position
x += (xto - x) / 25;
y += (yto - y) / 25;

x = clamp(x,view_w_half + buff,room_width - view_w_half - buff);
y = clamp(y,view_h_half + buff,room_height - view_h_half - buff);

//Making the screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));


//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("CoolMountains"))
{
	layer_x("CoolMountains",x/10);
}

if (layer_exists("CoolTrees")) layer_x("CoolTrees",x/4);


