// room transistion

if (instance_exists(objPlayer)) && (position_meeting(objPlayer.x, objPlayer.y, id))
{
	if (!instance_exists(objTransition))
	{
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = objPlayer.direction;
		with (objPlayer) playerState = PlayerCollision;
		RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
		instance_destroy();
	}
}