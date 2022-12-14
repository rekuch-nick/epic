


image_alpha += dir * .04;
if(image_alpha >= 1){ dir = -1; }

if(image_alpha < 0){
	ww.makeRoom = targetRoom;
	instance_destroy();
}