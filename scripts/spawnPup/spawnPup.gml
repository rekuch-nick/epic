function spawnPup(a, b, t){
	var tries = 0;
	
	
	
	while(tries < 1000){
		tries ++;
		
		if(tries > 1){
			a = clamp(a + choose(-20, 0, 20), 0, room_width - 1);
			b = clamp(b + choose(-20, 0, 20), 0, room_height - 151);
		}
		
		if(collision_point(a, b, objPup, true, true)){ continue; }
		
		instance_create_depth(a, b, ww.layerP, t);
		
		return;
		
	}
}