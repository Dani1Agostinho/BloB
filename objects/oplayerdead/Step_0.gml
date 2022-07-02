



if (done == 0)
{
	
	vsp += grv;
	//Horizontal collision

	if (collision(x+hsp ,y))
	{
		while (!collision(x+sign(hsp) ,y))
		{
			x += sign(hsp);
		}
		hsp = 0;
	
	}
	x = x + hsp;

	//Vertical collision
	if (collision(x ,y + vsp))
	{
		if (vsp > 0 ) 
		{
			done = 1;
		}
		while (!collision(x ,y + sign(vsp)))
		{
			y += sign(vsp);
		}
		vsp = 0;
	
	}
	y += vsp;
}