move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_col");
hp = 12;
hp_total = hp;
damage = 1;
facing = 0; 
charge = 0;
level = 1;
xp = 0;
xp_require = 120;

function add_xp(_xp_to_add)
{
	xp+= _xp_to_add;
	if (xp>= xp_require)
	{
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 8;
		hp = hp_total;
		damage += 0.8;
	}
}