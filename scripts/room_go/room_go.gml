function room_goto_dark(r) 
{
	with room_manager{
		if global.Dark=0{
			alarm[0]=1;
			roomGo=r;
		}
	}
}