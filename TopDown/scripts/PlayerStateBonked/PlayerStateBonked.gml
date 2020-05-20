// Update movement
hSpeed = lengthdir_x(speedBonked, direction - 180);
vSpeed = lengthdir_y(speedBonked, direction - 180);

moveDistanceRemain = max(0, moveDistanceRemain - speedBonked);
var _collieded = PlayerCollision();

// Update sprite
sprite_index = sprDollAHurt;
image_index = CARDINAL_DIR - 2; // due to inverted sprite

//change height
z = sin((moveDistanceRemain / distanceBonked) * pi) * distanceBonkedHeight;

// State changes
if (moveDistanceRemain <= 0)
{
	playerState = PlayerStateWalk;
	
}
