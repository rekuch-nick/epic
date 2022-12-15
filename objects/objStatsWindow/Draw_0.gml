draw_self();
draw_rectangle_color(0, 550, 200, 650, c_black, c_black, c_black,c_black, false);

var x2 = 200 * (pc.hp / pc.hpMax);
draw_rectangle_color(0, 550, x2, 600, c_red, c_maroon, c_red,c_maroon, false);

x2 = 200 * (pc.mp / pc.mpMax);
draw_rectangle_color(0, 600, x2, 625, c_aqua, c_blue, c_aqua, c_blue, false);

x2 = 200 * (pc.xp / pc.xpMax);
draw_rectangle_color(0, 626, x2, 650, c_lime, c_green, c_lime, c_green, false);



if(pc.acts[pc.act] != noone){
	var img = pc.acts[pc.act];
	draw_sprite_stretched(img, 0, 650, 550, 50, 50);
}



draw_text(563, 665, "Home");
if(pc.returnTime > 0){
	draw_rectangle_color(550, 650, 550 + pc.returnTime, 700, c_yellow, c_lime, c_yellow, c_lime, false);
}