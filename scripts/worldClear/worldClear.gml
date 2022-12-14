function worldClear(){
	
	
	with(objTile){ instance_destroy(); }
	
	with(objMob){ instance_destroy(); }
	with(objPortal){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		ww.fmap[a, b] = noone;
		ww.bmap[a, b] = noone;
		
		
	}}
	
	
}