if global.Dark<1{
	global.Dark+=0.1;
	alarm[0]=1;
}
else {
	room_goto(roomGo);
	alarm[1]=1;

}