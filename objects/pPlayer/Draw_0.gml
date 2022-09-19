draw_self();

if (BeenHitFlash > 0)
{
	BeenHitFlash -- ;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}