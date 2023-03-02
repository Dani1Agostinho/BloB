/// @desc die

with (oGun) instance_destroy();
instance_change(oPlayerdead,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction);

if(sign(hsp) != 0) image_xscale = sign(hsp);
