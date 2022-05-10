/// @description Insert description here
// You can write your code in this editor
with(oDead) {
			if(5 >= image_xscale) {
			image_xscale += 0.02*sign(image_xscale);
			image_yscale = 10/image_xscale;
		} else {
			image_xscale = 20+random_range(-2,2);
			image_yscale = 10+random_range(-2,2);
			x = xstart + random_range(-10,10);
			y = ystart + random_range(-10,10);
			image_angle = random_range(-10,10);
			image_blend = make_color_hsv(random(255),255,255);
		}
}