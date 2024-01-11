/// @description health bar

draw_self();

if (hp > 0) {
if (flash > 0) {
	flash--; //subtract 1 from flash every frame
shader_set(sh_white);
draw_self();
shader_reset();
}

draw_text(x,y,isHit);

//draw border bg
draw_sprite(spr_healthbarbg,0,x-24,y-70)

//draw the health
draw_sprite_stretched(spr_healthbar,0,x-24,y-70,min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);

//draw border
draw_sprite(spr_healthbarborder,0,x-24,y-70)
}




















