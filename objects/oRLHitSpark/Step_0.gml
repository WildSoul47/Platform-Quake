with (oEnemy)
{
	if (distance_to_object(other) <= 64 ) && (!collision_line(other.x,other.y,x,y,oWall,false,false))
	{
		hp = hp - max(0, 0.05 * floor(64 - distance_to_object(other)));
		flash = 3;
		hitfrom	 = other.direction;
	}
}

with(pPlayer)
{
	if(distance_to_object(other) <= 64 ) && (!collision_line(other.x,other.y,x,y,oWall,false,false))
	{
		RocketBoostx = lengthdir_x(3.6,other.image_angle-180);
		RocketBoosty = lengthdir_y(1.2,other.image_angle-180);
	}
}