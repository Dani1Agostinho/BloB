<<<<<<< HEAD

//Update Destination
=======
// Update destination

>>>>>>> 21ece8cdd4f73bf2d858bbc8f84fe4badbda0fb2
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
	
<<<<<<< HEAD
}


//Update position
x += (xto - x) / 25;
y += (yto - y) / 25;

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
=======
	
}

// Update the object position

x += (xto - x) / 25;
y += (yto - y) / 25;

// Update the camera view

camera_set_view_pos(cam,x - view_w_half,y - view_h_half);
>>>>>>> 21ece8cdd4f73bf2d858bbc8f84fe4badbda0fb2
