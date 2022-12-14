function pointInBlock(a, b){
	var aa = floor(a / ww.TILE_SIZE);
	var bb = floor(b / ww.TILE_SIZE);
	
	if(!inBounds(aa, bb)){ return true; }
	
	if(ww.bmap[aa, bb] != noone){ 
		ww.lastTouchedBlock = ww.bmap[aa, bb];
		return true; 
	}	
	return false;
}