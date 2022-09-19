with (pPlayer)

if (other.PortalInID >= oPortalOut.PortalOutID)
{
		audio_play_sound(telein,20,false);
		if (x > other.x)
		{
			x = oPortalOut.x - 32;
			y = oPortalOut.y + 16;
		}
		else
		{
			x = oPortalOut.x + 32;
			y = oPortalOut.y + 16;
		}
}