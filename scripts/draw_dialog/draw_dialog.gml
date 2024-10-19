function draw_dialog(alpha,text,voice,pitch,speed_text){
	text_anim=string_copy(text,1,global.letters);
	
	if(string_length(text_anim)<string_length(text)){	
		write=1;
	}
	
	if(string_length(text_anim)>=string_length(text)){	
		write=0;
		if(keyboard_check_pressed(vk_space)){
			with(obj_dialog_manager){
				global.letters = 0;
			}
		dialog+=1;
		}
		
	}
	
	global.player_stop=true;
	
	draw_set_font(NBP_game);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	draw_sprite_ext(sp_dialog_box,-1,96,100,4,1.5,0,-1,alpha);
	//draw_text_ext(128,110,"asas",64,900);
	draw_text_color(128, 130, text_anim,c_white,c_white,c_white,c_white,1);

	if(write=1){
		with(obj_dialog_manager){
		alarm[0]=1;
		sound = voice;
		spd=speed_text;
		}
	}
	if (keyboard_check_pressed(ord("X"))){
		global.letters = 9999;
	}
}