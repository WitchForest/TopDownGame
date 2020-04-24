hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

// Update sprite index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
}
else
{
	sprite_index = spriteIdle;
}

if (_oldSprite != sprite_index)
{
	localFrame = 0;
}

// update image index
AnimateSprite();



// roll to be separated later
if (keyRoll)
{
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x + _activateX, y + _activateY, objEntityBase);
	
	if (activate == noone or activate.entityActivateScript == -1)
	{
		playerState = PlayerStateRoll;
		moveDistanceRemain = distanceRoll;
	}
	else
	{
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		// Make an NPC face player
		// This should be in the NPC code
		if (activate.entityNPC)
		{
			with (activate)
			{
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}
