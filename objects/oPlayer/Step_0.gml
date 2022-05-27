key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));

// Calculate movement

var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

if (place_meeting(x , y+1,oWall )) and (key_jump)
{
	vsp = -7;
}

//Horizontal collision

if (place_meeting(x+hsp ,y ,oWall))
{
	while (!place_meeting(x+sign(hsp) ,y ,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
}
x = x + hsp;

//Vertical collision
if (place_meeting(x ,y + vsp ,oWall))
{
	while (!place_meeting(x ,y + sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
}
y += vsp;

//Animation(frames etc)

//Jump animation
if (!place_meeting(x,y+1,oWall))
{
	 sprite_index = sPlayer4;
	 image_speed = 0;
	 if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
//walking animation
else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
		
		
	}
	else
	{
		sprite_index = sPlayerRun;
		
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);

if (hp <=0)
{
	instance_destroy();	
}


