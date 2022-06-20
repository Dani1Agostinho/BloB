/// @description Insert description here
// You can write your code in this editor
if(current_time >= crazy_time) {
	if(timer < 0 and timer > -10) {
		image_xscale = random_range(-5,5);	
		image_yscale = random_range(-5,5);
		speed = 0;
		if(timer == -9) {
			for(var i = 0; i < 360; i += 5) {
				with(instance_create_layer(x,y,layer,oBullet)) {
					direction = i;
					speed = 30;
					timer = -100;
				}
			}
			instance_destroy();
		}
	} else {
		image_xscale = 1;
		image_yscale = 1;
		speed = 30;
	}

	timer--;
}

//Collision
var _collide = collision_line(xprevious,yprevious,x,y,oEnemy,false,false);
if(_collide != noone) {
	with (_collide)
	{
		hp = hp -4;
		flash = 2;
		hitfrom = other.direction;
		vsp = -3;
	}

	instance_destroy();
}