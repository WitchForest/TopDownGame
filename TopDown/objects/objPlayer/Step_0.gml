// Whole section uses implicit boolean conversation to int. Will need to be be rebuilt later
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

keyAction = keyboard_check_pressed(ord("Z"));
keyItem = keyboard_check_pressed(ord("A"));
keyRoll = keyboard_check_pressed(ord("X"));

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (global.gamePaused = false)
{
	script_execute(playerState);
}

depth = -bbox_bottom;