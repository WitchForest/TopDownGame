collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

playerState = PlayerStateWalk;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;


spriteRun = sprDollAWalk;
spriteIdle = sprDollAStand;
spriteRoll = sprDollARoll;

localFrame = 0;

