var _collision = false;
var _entityList = ds_list_create(); // lIst of all possible collidedable entities

// horizontal tiles
if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
{
	x -= x mod TILE_SIZE; //tile size
	if (sign(hSpeed) == 1)
	{
		x += TILE_SIZE - 1;
	}
	hSpeed = 0;
	_collision = true;
}

x += hSpeed;


var _entityCount = instance_position_list(x + hSpeed, y, objEntityBase, _entityList, false); //I'm guessing it returns list count?
var _snapX;

while (_entityCount > 0)
{
	var _entityCheck = _entityList[| 0];
	if (_entityCheck.entityCanCollide = true)
	{
		// move as close as possible
		if (sign(hSpeed) == -1) // Moving left
		{
			_snapX = _entityCheck.bbox_right + 1;
		}
		else // Moving right
		{
			_snapX = _entityCheck.bbox_left - 1;
		}
		x = _snapX;
		hSpeed = 0;
		_collision = true;
		_entityCount = 0;
	}
	ds_list_delete(_entityList, 0); // delete the first pos off the list
	--_entityCount;
}

ds_list_clear(_entityList);


// vertical  tiles
if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
{
	y -= y mod TILE_SIZE; //tile size
	if (sign(vSpeed) == 1)
	{
		y += TILE_SIZE - 1;
	}
	vSpeed = 0;
	_collision = true;
}

var _entityCount = instance_position_list(x, y + vSpeed, objEntityBase, _entityList, false); //I'm guessing it returns list count?
var _snapY;

while (_entityCount > 0)
{
	var _entityCheck = _entityList[| 0];
	if (_entityCheck.entityCanCollide = true)
	{
		// move as close as possible
		if (sign(vSpeed) == -1) // Moving up
		{
			_snapY = _entityCheck.bbox_bottom + 1;
		}
		else // Moving down
		{
			_snapY = _entityCheck.bbox_top - 1;
		}
		y = _snapY;
		vSpeed = 0;
		_collision = true;
		_entityCount = 0;
	}
	ds_list_delete(_entityList, 0); // delete the first pos off the list
	--_entityCount;
}

y += vSpeed;

ds_list_destroy(_entityList); // must be explicitly cleared 
return _collision;