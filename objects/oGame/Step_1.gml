//if(instance_exists(oPlasmaGun) == false)  && (instance_exists(oRocketLauncher) == false)
if(instance_exists(pGun) == false) && (instance_exists(pPlayer))
{
	if (global.hasPMG == true)
	{
		instance_create_layer(pPlayer.x,pPlayer.y,"Gun",oPlasmaGun);
	}
	
	else if (global.hasRL == true)
	{
		instance_create_layer(pPlayer.x,pPlayer.y,"Gun",oRocketLauncher);
	}
}