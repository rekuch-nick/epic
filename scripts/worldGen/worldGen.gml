function worldGen(note){
	pc.inRoom = note;
	pc.roomDis ++;
	
	mobPortal = false;
	inCreation = false;
	
	if(note == "start"){
		
		pc.roomDis = 0;
		
		for(var a=0; a<15; a++){ for(var b=0; b<15; b++){
			fmap[a, b] = imgSpace;
		}}
		
		for(var a=2; a<12; a++){ fmap[a, 2] = imgCloud; }
		
		for(var a=1; a<14; a++){ for(var b=3; b<11; b++){
			fmap[a, b] = imgCloud;
		}}
		
		bmap[6, 6] = imgBrother1;
		bmap[4, 4] = imgBrother2;
		
		
		if(pc.storyPoint == "start"){
			var s = instance_create_depth(0, 0, layerS, objScreenText);
			s.lines = [
				"I have something to show you children,",
				"Come through the portal when you're ready"
			];
			s.images = [imgDad, imgDad];
		}
		
		var a = 11; var b = 2;
		instance_create_depth(a*50, b*50, layerFF-b, objPortal);
	
	} else if(note == "01" && pc.storyPoint == "start"){
		worldGenFirstLook();
	
	} else if(note == "01" && pc.storyPoint == "first look" && pc.roomDis >= 5){
		worldGenLightningRoom();
	
	} else if(note == "01"){
		mobPortal = true; inCreation = true;
		
		for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
			fmap[a, b] = choose(imgGrass, imgGrass, imgGrass, imgGrass2, imgGrass3);
			
			
			bmap[a, b] = noone;
			if(irandom_range(1, 20) == 1){ bmap[a, b] = imgRock; }
			if(pc.roomDis >= 5 && irandom_range(1, 20) == 1){ bmap[a, b] = imgBush; }
		}}
		
		var n = 2 + floor(pc.roomDis / 3);
		if(pc.roomDis % 3 == 1){
			spawnMob(objMob, n);
		} else if (pc.roomDis % 3 == 2){
			spawnMob(objMobBat, n);
		} else {
			spawnMob(objMob, n/2);
			spawnMob(objMobBat, n/2);
		}
		
		if(pc.storyPoint == "first look"){
			var m = instance_find(objMob, 1);
			spawnPup(m.x, m.y, imgKey);
		}
		
	} else {
	
		for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
			fmap[a, b] = choose(imgCloud, imgCloud, imgCloud, imgSpace);
			bmap[a, b] = noone;	
		}}
		
	}
	
	
	
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		if(fmap[a, b] != noone){ fmap[a, b] = spawnTile(a, b, "f", fmap[a, b]); }
		
		if(bmap[a, b] != noone){ bmap[a, b] = spawnTile(a, b, "b", bmap[a, b]); }
		
	}}
}