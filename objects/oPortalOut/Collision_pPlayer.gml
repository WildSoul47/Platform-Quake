with (pPlayer)

if (other.PortalOutID >= oPortalIn.PortalInID)
{
		audio_play_sound(teleout,20,false);
		if (x > other.x)
		{
			x = oPortalIn.x - 32;
			y = oPortalIn.y + 16;
		}
		else
		{
			x = oPortalIn.x + 32;
			y = oPortalIn.y + 16;
		}
}