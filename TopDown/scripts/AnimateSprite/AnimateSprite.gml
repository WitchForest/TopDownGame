//update sprite
var _cardindalDirection = round(direction / 90);
var _totalFrames = sprite_get_number(sprite_index) / 4;

image_index = localFrame + (_cardindalDirection * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

//Loop animation
if (localFrame >= _totalFrames)
{
	animationEnd = true;
	localFrame -= _totalFrames;
}
else
{
	animationEnd = false;
}