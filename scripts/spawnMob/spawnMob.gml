function spawnMob(m, n){
	var tries = 0;
	while(tries < 1000){
		tries ++;
		
		var a = irandom_range(0, 14);
		var b = irandom_range(0, 10);
		
		var dis = abs(a - pc.xSpot) + abs(b - pc.ySpot);
		if(dis < 4){ continue; }
		
		if(ww.bmap[a, b] != noone){ continue; }
		
		if(collision_point(a*50, b*50, objMob, true, true)){ continue; }
		
		instance_create_depth(a*50, b*50, ww.layerM-b, m);
		n --;
		if(n < 1){
			return;
		}
	}
}