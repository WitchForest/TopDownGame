if (entityShadow)
{
	draw_sprite(sprShadow, 0, floor(x), floor(y))
}

if (flash != 0)
{
	shader_set(shWhiteFlash); // Expensive function
	shader_set_uniform_f(uFlash, flash);
}

draw_self();

if (shader_current() != -1)
{
	shader_reset();
}