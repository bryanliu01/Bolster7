if (place_meeting(x + HSpeed, y, oCollision))
{
	repeat (abs(HSpeed))
	{
		if (!place_meeting(x + sign(HSpeed), y, oCollision))
		{
			x =+ sign(HSpeed);
		}
		else break;
	}
}

HSpeed = 0;

if (place_meeting(x, y + VSpeed, oCollision))
{
	repeat (abs(VSpeed))
	{
		if (!place_meeting(x, y + sign(VSpeed), oCollision))
		{
			y =+ sign(VSpeed);
		}
		else break;
	}
}
VSpeed = 0;