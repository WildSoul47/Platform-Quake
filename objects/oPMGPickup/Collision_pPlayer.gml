global.hasPMG = true;
instance_destroy(pGun);
instance_create_layer(pPlayer.x,pPlayer.y,"Gun",oPlasmaGun);
instance_destroy(self);