function sleep(sec) 
{
	time = current_time+sec;
	while(current_time<time)
		{
			global.player_stop=true;
		}
	global.player_stop=false;}