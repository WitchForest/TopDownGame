// Update Sprite
AnimateSprite();

if (animationEnd)
{
	playerState = PlayerStateWalk;
	animationEnd = false;
	if (animationEndScript != -1)
	{
		script_execute(animationEndScript);
		animationEndScript = -1;
	}
}