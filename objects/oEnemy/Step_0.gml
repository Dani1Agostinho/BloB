
vsp += grv;


//Horizontal collision

if (collision(x+hsp ,y ))
{
	while (!collision(x+sign(hsp) ,y ))
	{
		x += sign(hsp);
	}
	hsp = -hsp
	
}

x = x + hsp;

//Vertical collision
if (collision(x ,y + vsp ))
{
	while (!collision(x ,y + sign(vsp)))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
}
y += vsp;

//Animation(frames etc)

//Jump animation
if (!collision(x,y+1))
{
	 sprite_index = sSlimeJump;
	 image_speed = 0;
	 if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
//walking animation
else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemybase;
		
		
	}
	else
	{
		sprite_index = sSlimeRun;
		
	}
	
}

if (hsp != 0) image_xscale = sign(hsp)*abs(image_xscale);




