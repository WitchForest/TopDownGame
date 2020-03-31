collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

playerState = PlayerStateWalk;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.0;
speedRoll = 2.0;
distanceRoll = 75;


spriteRun = sprDollAWalk;
spriteIdle = sprDollAStand;
spriteRoll = sprDollARoll;

localFrame = 0;

