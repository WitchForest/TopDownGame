/// @desc PlayerActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript

playerState = PlayerStateAct;
sprite_index = argument[0];
if (argument_count > 1)
{
	animationEndScript = argument[1];
}

localFrame = 0;
image_index = 0;
AnimateSprite();