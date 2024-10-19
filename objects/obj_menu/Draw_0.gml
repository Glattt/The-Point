/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70AAFF4B
/// @DnDArgument : "code" "draw_sprite_ext(sprite_index, image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);$(13_10)$(13_10)draw_set_font(NBP);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)for (var i=0; i<op_length; i++)$(13_10){$(13_10)	var col =c_ltgray;$(13_10)	if pos == i {col = c_white}$(13_10)	draw_text_color(x+op_border, y+op_border+op_space*i, option[menu_level,i],col,col,col,col,1);$(13_10)}$(13_10)$(13_10)draw_set_alpha(alpha);$(13_10)draw_rectangle(0, 0, room_width, room_height,false);"
draw_sprite_ext(sprite_index, image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);

draw_set_font(NBP);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


for (var i=0; i<op_length; i++)
{
	var col =c_ltgray;
	if pos == i {col = c_white}
	draw_text_color(x+op_border, y+op_border+op_space*i, option[menu_level,i],col,col,col,col,1);
}

draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height,false);