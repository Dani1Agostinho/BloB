function ApproachCircle(Value,Target,MaxSpd)
{
	Value += median(-MaxSpd,MaxSpd,angle_difference(Target,Value));
	return Value
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