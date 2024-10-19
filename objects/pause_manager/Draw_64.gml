draw_rectangle_color(0,0, room_width, room_height,c_black,c_black,c_black,c_black,false);

draw_set_font(NBP);
draw_set_valign(fa_top);
draw_set_halign(fa_middle);


if (game_paused)
{
	draw_set_alpha(1);
	for (var i=0; i<op_length; i++)
{
	var col =c_ltgray;
	if pos == i {col = c_white}
	draw_text_color(op_borderx, op_bordery+op_space*i, option[i],col,col,col,col,1);
}
	
}
else draw_set_alpha(0);
