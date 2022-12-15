function spawnMobAt(a, b, m){
	
	
	
		
	
	
	//var dis = abs(a - pc.xSpot) + abs(b - pc.ySpot);
	
	//if(ww.bmap[a, b] != noone){ continue; }
		
	if(collision_point(a, b, objMob, true, true)){ return; } //
		
	instance_create_depth(a, b, ww.layerM-floor(b/50), m);
	

}