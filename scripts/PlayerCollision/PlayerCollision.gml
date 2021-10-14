function PlayerCollision()
{
	var _Collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(CollisionMap, x + HSpeed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(HSpeed) == 1) x += TILE_SIZE - 1;
		HSpeed = 0;
		_Collision = true;
	}
	
	//Horizontal Move Commitment
	x += HSpeed;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(CollisionMap, x, y + VSpeed))
	{
		y -= y mod TILE_SIZE;
		if (sign(VSpeed) == 1) y += TILE_SIZE - 1;
		VSpeed = 0;
		_Collision = true;
	}
	
	//Vertical Move Commitment
	y += VSpeed;
	
	
	return _Collision;
}