if global.Dark>0{
	global.Dark-=0.1;
	alarm[1]=1;
	global.player_stop=true;
}
else {
		global.player_stop=false;
}