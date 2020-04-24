animationProgress += (1 - animationProgress) / 50;
textProgress += global.textSpeed;

// look up this function
xLeft = lerp(xLeft, xLeftTarget, animationProgress);
xRight = lerp(xRight, xRightTarget, animationProgress);

if (keyboard_check_pressed(ord("X")))
{
	var _messageLength = string_length(message);
	if textProgress >= _messageLength
	{
		instance_destroy();
		if (instance_exists(objTextQueued))
		{
			with (objTextQueued)
			{
				ticket--;
			}
		}
		else
		{
			with (objPlayer)
			{
				playerState = lastState;
			}
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}
