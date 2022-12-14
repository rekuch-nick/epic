function pointInSpace(a, b){
	var aa = floor(a / ww.TILE_SIZE);
	var bb = floor(b / ww.TILE_SIZE);
	
	if(!inBounds(aa, bb)){ return false; }
	
	if(ww.fmap[aa, bb] != noone){ 
		if(ww.fmap[aa, bb].sprite_index == imgSpace){ 
			return true; 
		}
	}	
	return false;
}