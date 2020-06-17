// used passed in attack hitbox and check of collisions
mask_index = argument0;

var hitByAttackFrame = ds_list_create();
var hits = instance_place_list(x, y, objEntityBase, hitByAttackFrame, false);

if (hits > 0)
{
	for (var i = 0; i < hits; ++i)
	{
		// if this instance has not yet been collided - collide
		var hitID = hitByAttackFrame[| i]; // Pipe character is used to access a value from a DS list
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				if (entityHitScript != -1)
				{
					script_execute(entityHitScript);
				}
			}
		}
	}
}
ds_list_destroy(hitByAttackFrame);
mask_index = sprDollAStand;