/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F2190E4
/// @DnDArgument : "code" "accept_key=keyboard_check_pressed(vk_space);$(13_10)up_key = keyboard_check_pressed(ord("W"));$(13_10)down_key = keyboard_check_pressed(ord("S"));$(13_10)op_length=array_length(option);$(13_10)$(13_10)if (keyboard_check_pressed(vk_escape)) game_paused =!game_paused;$(13_10)$(13_10)if (game_paused)$(13_10){$(13_10)	instance_deactivate_all(true);$(13_10)	pos+=down_key-up_key;$(13_10)	if pos>=op_length {pos=0};$(13_10)	if pos<0 {pos=op_length-1};$(13_10)	if accept_key $(13_10)	{$(13_10)		//меню паузы$(13_10)		switch (pos)$(13_10)		{$(13_10)		case 0:game_paused =!game_paused;break;$(13_10)		case 1:room_goto(0);break;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)else {$(13_10)instance_activate_all();$(13_10)}$(13_10)"
accept_key=keyboard_check_pressed(vk_space);
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
op_length=array_length(option);

if (keyboard_check_pressed(vk_escape)) game_paused =!game_paused;

if (game_paused)
{
	instance_deactivate_all(true);
	pos+=down_key-up_key;
	if pos>=op_length {pos=0};
	if pos<0 {pos=op_length-1};
	if accept_key 
	{
		//меню паузы
		switch (pos)
		{
		case 0:game_paused =!game_paused;break;
		case 1:room_goto(0);break;
		}
	}
}

else {
instance_activate_all();
}