function spawnPortal(){
	while(true){
		
		var a = irandom_range(0, 14);
		var b = irandom_range(0, 10);
		
		var dis = abs(a - pc.xSpot) + abs(b - pc.ySpot);
		if(dis < 4){ continue; }
		
		if(ww.bmap[a, b] != noone){ continue; }
		
		
		instance_create_depth(a*50, b*50, ww.layerFF-b, objPortal);
		return;
	}
}