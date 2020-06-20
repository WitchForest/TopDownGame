// occurs before ANY object's step event

with (objPlayer) playerState = PlayerStateTransition;

if (leading == OUT)
{
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >= 1) // SCREEN is fully obscured
	{
		room_goto(target);
		leading = IN;
	}
}
else
{
	percent = max(0, percent - TRANSITION_SPEED)
	if (percent <= 0)
	{
		with (objPlayer) playerState = PlayerStateWalk;
		instance_destroy();
	}
}