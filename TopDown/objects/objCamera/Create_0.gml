/// @description setup camera

camera = view_camera[0];
follow = objPlayer;
cameraWidthHalf = camera_get_view_width(camera) * 0.5;
cameraHeightHalf = camera_get_view_height(camera) * 0.5;

xPositionTo = xstart;
yPositionTo = ystart;


// should be tis own function?
camShakeLength = 0;
camShakeMagnitude = 0;
camShakeRemain = 0;