animationProgress += (1 - animationProgress) / 50;
textProgress += global.textSpeed;

// look up this function
xLeft = lerp(xLeft, xLeftTarget, animationProgress);
xRight = lerp(xRight, xRightTarget, animationProgress);

// Cycle trhough responses
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
responseCursor += (keyDown - keyUp);
var _max = array_length_1d(responses) - 1;
var _min = 0;
if (responseCursor > _max)
{
	responseCursor = _max;
}
if (responseCursor < _min)
{
	responseCursor = _min;
}

if (keyboard_check_pressed(ord("X")))
{
	var _messageLength = string_length(message);
	if textProgress >= _messageLength
	{
		if (responses[0] != -1)
		{
			with(originInstance)
			{
				DialogResponse(other.responseScript[other.responseCursor]);
			}
		}
		
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
