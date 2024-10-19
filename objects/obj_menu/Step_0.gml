/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67C488CF
/// @DnDArgument : "code" "up_key = keyboard_check_pressed(ord("W"));$(13_10)down_key = keyboard_check_pressed(ord("S"));$(13_10)accept_key=keyboard_check_pressed(vk_space);$(13_10)$(13_10)op_length=array_length(option[menu_level]);$(13_10)$(13_10)pos+=down_key-up_key;$(13_10)if pos>=op_length {pos=0};$(13_10)if pos<0 {pos=op_length-1};$(13_10)$(13_10)if accept_key $(13_10){$(13_10)	var _sml=menu_level;$(13_10)	$(13_10)	switch(menu_level)$(13_10)	{	$(13_10)		//меню паузы$(13_10)		case 0:$(13_10)			switch (pos)$(13_10)			{$(13_10)			case 0:room_goto_next();break;$(13_10)			case 1:menu_level=1; break;$(13_10)			case 2:game_end();break;$(13_10)			}$(13_10)		break;$(13_10)		//настройки$(13_10)		case 1:$(13_10)			switch(pos)$(13_10)			{$(13_10)				//размер окна$(13_10)				case 0: menu_level=2; break;$(13_10)				//яркость$(13_10)				case 1: menu_level=3; break;$(13_10)				//назад$(13_10)				case 2: menu_level=0; break;$(13_10)			}$(13_10)		break;$(13_10)		//размер окна$(13_10)		case 2:$(13_10)			switch(pos)$(13_10)			{$(13_10)				case 1:$(13_10)				if accept_key$(13_10)				{$(13_10)					 if window_get_fullscreen()$(13_10)					 {$(13_10)					     window_set_fullscreen(false);$(13_10)					 }$(13_10)					 else$(13_10)					 {$(13_10)					     window_set_fullscreen(true);$(13_10)					 }$(13_10)				}$(13_10)				break;$(13_10)				case 2:menu_level=1;break;$(13_10)			}$(13_10)		break;$(13_10)		//яркость$(13_10)		case 3:$(13_10)			switch(pos)$(13_10)				{$(13_10)					case 1:$(13_10)					if accept_key$(13_10)					{$(13_10)						if alpha<0.5 {alpha += 0.1;}$(13_10)						else {alpha=0;}$(13_10)					}$(13_10)					break;$(13_10)					case 2:menu_level=1;break;$(13_10)				}$(13_10)		break;$(13_10)	}$(13_10)	$(13_10)	if _sml!=menu_level {pos=0;}$(13_10)}$(13_10)$(13_10)"
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key=keyboard_check_pressed(vk_space);

op_length=array_length(option[menu_level]);

pos+=down_key-up_key;
if pos>=op_length {pos=0};
if pos<0 {pos=op_length-1};

if accept_key 
{
	var _sml=menu_level;
	
	switch(menu_level)
	{	
		//меню паузы
		case 0:
			switch (pos)
			{
			case 0:room_goto_next();break;
			case 1:menu_level=1; break;
			case 2:game_end();break;
			}
		break;
		//настройки
		case 1:
			switch(pos)
			{
				//размер окна
				case 0: menu_level=2; break;
				//яркость
				case 1: menu_level=3; break;
				//назад
				case 2: menu_level=0; break;
			}
		break;
		//размер окна
		case 2:
			switch(pos)
			{
				case 1:
				if accept_key
				{
					 if window_get_fullscreen()
					 {
					     window_set_fullscreen(false);
					 }
					 else
					 {
					     window_set_fullscreen(true);
					 }
				}
				break;
				case 2:menu_level=1;break;
			}
		break;
		//яркость
		case 3:
			switch(pos)
				{
					case 1:
					if accept_key
					{
						if alpha<0.5 {alpha += 0.1;}
						else {alpha=0;}
					}
					break;
					case 2:menu_level=1;break;
				}
		break;
	}
	
	if _sml!=menu_level {pos=0;}
}