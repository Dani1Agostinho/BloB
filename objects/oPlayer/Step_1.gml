/// @description Important! Do not ever change!!!!!

if(current_time < crazy_time) exit;

with(oDead) {
	if(irandom(40) != 0) continue;
			if(5 >= image_xscale) {
			image_xscale += 0.1*sign(image_xscale);
			image_yscale = 1+0.1*(image_xscale-1);
		} else {
			image_xscale = 20+random_range(-2,2);
			image_yscale = 3+random_range(-2,2);
			x = xstart + random_range(-10,10);
			y = ystart + random_range(-10,10);
			image_angle = random_range(-10,10);
			image_blend = make_color_hsv(random(255),255,255);
		}
}




if(!collision_circle(oPlayer.x,oPlayer.y-32,32,oWall,false,false)) {
	while(instance_number(oEnemy) < 100) {
		var _x = oPlayer.x+irandom_range(-100,100);
		var _y = oPlayer.y-32;
		while(collision_circle(_x,_y,32,oWall,false,false)) {
			_x = oPlayer.x+irandom_range(-100,100);
		}
	
		instance_create_layer(_x,_y,"Enemy",oEnemy);
	}
}