/// @desc 

if instance_number(oEnemy) < 200 {
	with(instance_create_layer(x+random_range(-50,50),y+random_range(-50,50),layer,oEnemy)) {
		image_xscale = random_range(-2,2);
		image_yscale = image_xscale;
	}
}