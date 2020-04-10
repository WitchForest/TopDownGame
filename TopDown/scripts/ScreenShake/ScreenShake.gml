// Set screen shake

camShakeLength = 0;
camShakeMagnitude = 0;
camShakeRemain = 0;

with (global.iCamera)
{
	if(argument0 > camShakeRemain)
	{
		camShakeMagnitude = argument0;
		camShakeRemain = camShakeMagnitude;
		camShakeLength = argument1;
	}
}