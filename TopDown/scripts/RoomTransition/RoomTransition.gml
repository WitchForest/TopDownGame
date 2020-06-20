/// @desc room transition
/// @arg Type
/// @arg Target Room

if (instance_exists(objTransition) = false)
{
	with (instance_create_depth(0, 0, -9999, objTransition))
	{
		type = argument[0];
		target = argument[1];
	}
}
else
{
	show_debug_message("Failed attempted transition: instance already exists");
}