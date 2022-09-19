gunsprite = layer_sprite_get_id("TitleAssets","gGun");
if (global.hasgun) && (global.kills >0)
{
	endtext[0]="And on this day our hero had slain " + string(global.kills)+" people.";
	if (global.kills == 1) endtext[0] = "And on this day our hero killed a guy for no reason."
	endtext[1]="But some of those people had guns too, so...";
	endtext[2]="He was probably saving the world, or something.";
	endtext[3]="Regardless, he was arrested two days later spent the rest of his life in prison";
	endtext[4]="The defense team tried to argue that the sexy recoil effects and hit flashed were to blame,\nbut to no avail";
	endtext[5]="The park ranger would later state she was \"not argry, just disappointed.\"";
	endtext[6]="The end.";
	endtext[7]="";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "On this day our hero had a wonderful, serene walk through a national park\nand didn't murder anyone";
	endtext[1] = "report";
	endtext[2] = "Normal";
	endtext[3] = "Else";
	endtext[4] = "End";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";