/// @arg id
if(global.iLifted == noone)
{
	PlayerActOutAnimation(sprDollALift);
	global.iLifted = argument0;
	with (global.iLifted)
	{
		lifted = true;
		persistent = true;
	}
}