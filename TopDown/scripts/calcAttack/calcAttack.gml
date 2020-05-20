// used passed in attack hitbox and check of collisions
mask_index = argument0;

var hitByAttackFrame = ds_list_create();
var hits = instance_place_list(x, y, objEntityBase, hitByAttackFrame, false);

if (hits > 0)
{
	for (var i = 0; i < hits; ++i)
	{
		// if this instance has not yet been collided - collide
		var hitID = hitByAttackFrame[| i]; /// Look this up? why the pipe value?
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				image_blend = c_red;
			}
		}
	}
}
ds_list_destroy(hitByAttackFrame);
mask_index = sprDollAStand;