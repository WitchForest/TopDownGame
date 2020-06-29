collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

playerState = PlayerStateWalk;
playerAttackState = attackSlash;
hitByAttack = -1;
lastState = playerState;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.0;
speedRoll = 2.0;
distanceRoll = 75;
distanceBonked = 40;
distanceBonkedHeight = 12;
speedBonked = 1.5;
z = 0;

animationEndScript = -1;

spriteRun = sprDollAWalk;
spriteIdle = sprDollAStand;
spriteRoll = sprDollARoll;

localFrame = 0;

if(global.targetX != -1 || global.targetY != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}