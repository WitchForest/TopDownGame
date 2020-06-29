// event inherited?
if (!global.gamePaused)
{
	depth = -bbox_bottom;
	if (lifted) && (instance_exists(objPlayer))
	{
		if (objPlayer.sprite_index != sprDollALift)
		{
			x = objPlayer.x;
			y = objPlayer.y;
			z = 25;
			depth = objPlayer.depth - 1; // displays on top of player
		}
	}
}
flash = max(flash - 0.04, 0);