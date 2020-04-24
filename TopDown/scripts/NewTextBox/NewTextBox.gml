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
}

with (objPlayer)
{
	if (playerState != PlayerStateLocked)
	{
		lastState = playerState;
		playerState = PlayerStateLocked;
	}
}