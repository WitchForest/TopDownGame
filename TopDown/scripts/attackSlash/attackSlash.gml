// new attack
if (sprite_index != sprDollAAttack)
{
	// Setup attack animation
	sprite_index = sprDollAAttack;
	localIndex = 0;
	image_index = 0;
	
	// Clear list of hit dolls
	if (!ds_exists(hitByAttack, ds_type_list))
	{
		hitByAttack = ds_list_create();
	}
	ds_list_clear(hitByAttack);
	
}

calcAttack(sprDollAAttackHB);

AnimateSprite();

if (animationEnd)
{
	playerState = PlayerStateWalk;
	animationEnd = false;
}