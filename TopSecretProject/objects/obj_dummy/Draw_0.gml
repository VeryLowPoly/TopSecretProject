/// @description Insert description here
// You can write your code in this editor

//first draw the self
draw_self();

if (flash > 0) {
	flash--; //subtract 1 from flash every frame
shader_set(sh_white);
draw_self();
shader_reset();
}


/*
draw_set_font(fnt_pfr);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x, y-62, timer);
*/





















