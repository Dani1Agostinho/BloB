
x = oPlayer.x;
y = oPlayer.y+6;

image_angle = point_direction(x,y, mouse_x, mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil -1);
if (mouse_check_button(mb_left)) and (firingdelay < 0 )
{
	recoil = 4;
	firingdelay = 8;
	with (instance_create_layer(x,y,"Bullets", oBullet))
	{
		direction = other.image_angle;
		image_angle = direction;
	}
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil, image_angle);

//change the image
if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
	
}

else 
{
	image_yscale = 1;
	
}




