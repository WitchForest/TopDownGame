/// @description Update camera
if instance_exists(follow)
{
	xPositionTo = follow.x;
	yPositionTo = follow.y;
}

x += (xPositionTo - x) / 15;
y += (yPositionTo - y) / 15;

// centre camera
x = clamp(x, cameraWidthHalf, room_width - cameraWidthHalf);
y = clamp(y, cameraHeightHalf, room_height - cameraHeightHalf);

// Shake da room(camera)
x += random_range(-camShakeRemain, camShakeRemain);
y += random_range(-camShakeRemain, camShakeRemain);

// needs doco
// linear only
camShakeRemain = max(0, camShakeRemain - ((1 / camShakeLength) * camShakeMagnitude));

camera_set_view_pos(camera, x - cameraWidthHalf, y - cameraHeightHalf)