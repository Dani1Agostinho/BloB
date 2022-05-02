draw_self();

if (flash > 0)
{
	flash = flash - 1;
	shader_set(Shader1);
	draw_self();
	shader_reset();
	
}
