/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18BD321B
/// @DnDArgument : "code" "/*draw_rectangle_color(0,0, room_width, room_height,c_black,c_black,c_black,c_black,false);$(13_10)$(13_10)draw_set_font(NBP);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_halign(fa_middle);$(13_10)$(13_10)$(13_10)if (game_paused)$(13_10){$(13_10)	draw_set_alpha(1);$(13_10)	for (var i=0; i<op_length; i++)$(13_10){$(13_10)	var col =c_ltgray;$(13_10)	if pos == i {col = c_white}$(13_10)	draw_text_color(op_borderx, op_bordery+op_space*i, option[i],col,col,col,col,1);$(13_10)}$(13_10)	$(13_10)}$(13_10)else draw_set_alpha(0);$(13_10)*/"
/*draw_rectangle_color(0,0, room_width, room_height,c_black,c_black,c_black,c_black,false);

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
*//**/