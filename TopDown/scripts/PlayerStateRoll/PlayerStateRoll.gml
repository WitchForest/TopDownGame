
// Update movement
hSpeed = lengthdir_x(speedRoll, direction);
vSpeed = lengthdir_y(speedRoll, direction);

moveDistanceRemain = max(0, moveDistanceRemain - speedRoll);
var _collieded = PlayerCollision();

// Update sprite
sprite_index = spriteRoll;
var _totalFames = sprite_get_number(sprite_index) / FACE_DIRECTIONS;
image_index = (CARDINAL_DIR * _totalFames) + min(((1 - (moveDistanceRemain / distanceRoll)) *  _totalFames), _totalFames - 1); // Should be broken up, or very carefully documented

// State changes
if (moveDistanceRemain <= 0)
{
	playerState = PlayerStateWalk;
	
}