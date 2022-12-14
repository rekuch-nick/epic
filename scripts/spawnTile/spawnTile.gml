function spawnTile(a, b, lay, img){
	
	var l = 0;
	if(lay == "f"){ l = ww.layerF; }
	if(lay == "ff"){ l = ww.layerFF; }
	if(lay == "b"){ l = ww.layerB; }
	if(lay == "p"){ l = ww.layerP; }
	if(lay == "m"){ l = ww.layerM; }
	
	
	var xOff = 0; var yOff = 0;
	if(img == imgBrother1 || img == imgBrother2){
		xOff = 25; yOff = 25;
		l = ww.layerM;
	}
	
	
	var t = instance_create_depth(a*50 + xOff, b*50 + yOff, l-b, objTile);
	t.sprite_index = img;
	
	if(img == imgSpace){ t.image_index = irandom_range(0, 6); }
	
	
	
	return t;
	
	
	
}