
with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		Slide_Transition(TRANS_MODE.GOTO,other.target);
	}
	
}
