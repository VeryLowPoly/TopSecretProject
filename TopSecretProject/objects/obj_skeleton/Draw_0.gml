/// @description health bar

draw_self();

//draw border bg
draw_sprite(spr_healthbarbg,0,x-24,y-70)

//draw the health
draw_sprite_stretched(spr_healthbar,0,x-24,y-70,(hp/hp_max) * healthbar_width, healthbar_height);

//draw border
draw_sprite(spr_healthbarborder,0,x-24,y-70)



















