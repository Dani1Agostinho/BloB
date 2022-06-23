function ApproachCircle(value,target,spd) {
if angle_difference(target,value) < 180 {
	value += spd;	
} else value -= spd

return value;
}