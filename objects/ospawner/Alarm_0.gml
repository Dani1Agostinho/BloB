/// @description Insert description here
// You can write your code in this editor
if instance_number(oEnemy) < 200 {
	with(instance_create_layer(x+random_range(-50,50),y+random_range(-50,50),layer,oEnemy)) {
		size = random_range(-3,3);
		hsp = choose(-walksp,walksp);
	}
}
alarm[0] = 2
