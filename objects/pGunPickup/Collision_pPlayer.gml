/// @description Equip Gun

global.hasgun = true;
instance_create_layer(pPlayer.x,pPlayer.y,"Gun",pGun);
instance_destroy(self);