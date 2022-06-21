//Update Destination
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;

}



//Update position
x += (xto - x) / 25;
y += (yto - y) / 25;

x = clamp(x,view_w_half,room_width - view_w_half)
y = clamp(y,view_h_half,room_height - view_h_half)



//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("CoolMountains"))
{
	layer_x("CoolMountains",x/10);
}

if (layer_exists("CoolTrees")) layer_x("CoolTrees",x/4);


