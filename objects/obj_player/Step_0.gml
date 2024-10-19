/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18FD3D03
/// @DnDArgument : "code" "if (global.player_stop=false){$(13_10)	$(13_10)	right_key = keyboard_check(ord("D"));$(13_10)	left_key = keyboard_check(ord("A"));$(13_10)	up_key = keyboard_check(ord("W"));$(13_10)	down_key = keyboard_check(ord("S"));$(13_10)$(13_10)	xspd = (right_key-left_key)*move_spd;$(13_10)	yspd = (down_key-up_key)*move_spdy;$(13_10)$(13_10)	//collisions$(13_10)	if place_meeting(x+xspd,y,obj_wall)==true{$(13_10)		xspd=0;$(13_10)	}$(13_10)	if place_meeting(x,y+yspd,obj_wall)==true{$(13_10)		yspd=0;$(13_10)	}$(13_10)$(13_10)$(13_10)$(13_10)	x+=xspd;$(13_10)	y+=yspd;$(13_10)$(13_10)	if (xspd==0 and yspd==0){$(13_10)		sprite_index=spr_player_idle;$(13_10)	}$(13_10)	else {$(13_10)		sprite_index=spr_player_walk;$(13_10)		if (sign(xspd) > 0) image_xscale = 5; $(13_10)		else if (sign(xspd) < 0) image_xscale = -5;$(13_10)	}$(13_10)$(13_10)	depth=-bbox_bottom;$(13_10)}$(13_10)$(13_10)if (global.player_stop=true){$(13_10)$(13_10)	sprite_index=spr_player_idle;$(13_10)}"
if (global.player_stop=false){
	
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));

	xspd = (right_key-left_key)*move_spd;
	yspd = (down_key-up_key)*move_spdy;

	//collisions
	if place_meeting(x+xspd,y,obj_wall)==true{
		xspd=0;
	}
	if place_meeting(x,y+yspd,obj_wall)==true{
		yspd=0;
	}



	x+=xspd;
	y+=yspd;

	if (xspd==0 and yspd==0){
		sprite_index=spr_player_idle;
	}
	else {
		sprite_index=spr_player_walk;
		if (sign(xspd) > 0) image_xscale = 5; 
		else if (sign(xspd) < 0) image_xscale = -5;
	}

	depth=-bbox_bottom;
}

if (global.player_stop=true){

	sprite_index=spr_player_idle;
}