var _obj;
if (instance_exists(objTextBox))
{
	_obj = objTextQueued;
}
else
{
	_obj = objTextBox;
}

with (instance_create_layer(0, 0, "Instances", _obj))
{
	message = argument[0];
	// other refers to whatever was calling the function
	if (instance_exists(other)) 
	{
		originInstance = other.id;
	}
	else
	{
		originInstance = noone;
	}
	
	if (argument_count > 1)
	{
		background = argument[1];
	}
	else
	{
		background = 1;
	}
	
	if (argument_count > 2)
	{
		responses = argument[2];
		for (var i = 0; i < array_length_1d(responses); ++i)
		{
			var _markerPosition = string_pos(":", responses[i]);
			// todo - look up function definitions
			responseScript[i] = real(string_copy(responses[i], 1, _markerPosition - 1 ));
			responses[i] = string_delete(responses[i], 1, _markerPosition);
		}
	}
	else
	{
		responses = [-1];
		responseScript = [-1];
	}
}

with (objPlayer)
{
	if (playerState != PlayerStateLocked)
	{
		lastState = playerState;
		playerState = PlayerStateLocked;
	}
}