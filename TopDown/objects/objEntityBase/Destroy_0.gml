/// @description drop fragments and/or items

if (entityFragmentCount > 0)
{
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	DropItems(x, y, fragmentArray);
}