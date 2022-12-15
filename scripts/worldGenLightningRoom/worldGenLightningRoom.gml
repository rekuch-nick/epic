function worldGenLightningRoom(){
	
	mobPortal = true; inCreation = true;
	pc.x = 75; pc.y = 50;
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		fmap[a, b] = imgGrass;
		bmap[a, b] = noone;
	}}
	
	for(var a=0; a<11; a++){ bmap[a, 3] = imgBush; }
	for(var a=4; a<15; a++){ bmap[a, 8] = imgBush; }
	
	spawnPup(375, 275, imgLightningWep);
	
	spawnMobAt(700, 525, objMob);
	spawnMobAt(650, 525, objMob);
}