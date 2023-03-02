
x = oPlayer.x+4;
y = oPlayer.y+4;

image_angle = point_direction(x,y, mouse_x, mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil -1);


if (mouse_check_button(mb_left)) and (firingdelay < 0 )
{
	recoil = 4;
	firingdelay = 8;
	ScreenShake(2,10);
	
	audio_play_sound(sGunshot,5,false);
	audio_sound_pitch(sBullet, choose(0.8,1.0,0.6));
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




