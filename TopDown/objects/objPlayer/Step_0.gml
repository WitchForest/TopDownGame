// Whole section uses implicit boolean conversation to int. Will need to be be rebuilt later
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

keyAction = keyboard_check_pressed(ord("Z"));
keyItem = keyboard_check_pressed(ord("X"));

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;

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