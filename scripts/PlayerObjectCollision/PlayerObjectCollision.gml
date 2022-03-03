function PlayerObjectCollision()
{
	if (HSpeed != 0)
	{
		if (place_meeting(x + HSpeed, y, oCollision))
		{
			while (!place_meeting(x + sign(HSpeed), y, oCollision))
			{
				x +=sign(HSpeed);
			}
			HSpeed = 0;
		}
		if (place_meeting(x + HSpeed, y, interactFrame))
		{
			while (!place_meeting(x + sign(HSpeed), y, interactFrame))
			{
				x +=sign(HSpeed);
			}
			HSpeed = 0;
		}
	}
	x += HSpeed;
	
	//Vertical Object Collision
	if (VSpeed != 0)
	{
		if (place_meeting(x, y + VSpeed, oCollision))
		{
			while (!place_meeting(x, y + sign(VSpeed), oCollision))
				{
					y += sign(VSpeed);
				}
				VSpeed = 0;
		}
		if (place_meeting(x, y + VSpeed, interactFrame))
		{
			while (!place_meeting(x, y + sign(VSpeed), interactFrame))
				{
					y += sign(VSpeed);
				}
				VSpeed = 0;
		}
		
	}
	
	y += VSpeed;
	/*
	if (HSpeed != 0)
	{
		if (place_meeting(x + HSpeed, y, oCollision))
		{
			while (!place_meeting(x + sign(HSpeed), y, oCollision))
			{
				x +=sign(HSpeed);
			}
			HSpeed = 0;
		}
	}
	x += HSpeed;
	
	//Vertical Object Collision
	if (VSpeed != 0)
	{
		if (place_meeting(x, y + VSpeed, oCollision))
		{
			while (!place_meeting(x, y + sign(VSpeed), oCollision))
				{
					y += sign(VSpeed);
				}
				VSpeed = 0;
		}	
	}
	
	y += VSpeed;
	*/
}