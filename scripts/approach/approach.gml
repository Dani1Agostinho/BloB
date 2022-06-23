function ApproachCircle(value,target,spd) {
if angle_difference(target,value) < 180 {
	value += spd;	
} else value -= spd

return value;
}

function Approach(a, b, amount)
{
	if (a < b)
	{
		a += amount;
	    if (a > b)
	        return b;
	}
	else
	{
	    a -= amount;
	    if (a < b)
	        return b;
	}
	return a;
}