

if(place_meeting(x, y, obj_parede))
{
	if direc == 0
	{
		direc =1;
	}
	else if direc == 1
	{
		direc = 0;
	}
}

if (direc = 0)
{
	x += spd;
}
else if (direc = 1)
{
	x -= spd;
}

