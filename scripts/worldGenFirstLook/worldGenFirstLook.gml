function worldGenFirstLook(){
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		fmap[a, b] = choose(imgGrass, imgGrass, imgGrass, imgGrass2, imgGrass3);
		bmap[a, b] = noone;
			
			
	}}
		
	bmap[2, 8] = imgBrother1;
	bmap[4, 9] = imgBrother2;
		
	var s = instance_create_depth(0, 0, layerS, objScreenText);
	s.lines = [
		"Behold, the Creation!",
		"My greatest work, except of course, for the three of you.",
		"Why do I feel so weak?",
		"To exist in creation, one needs to constantly consume energy.",
		"While you're here you'll need to eat, or your body will die.",
		"We'll die?",
		"No, no. Just your body. When that happens, your spirit will return to the hevans.",
		"Oh, okay. That's a relief!",
		"Be alert. The creatures I made will try to eat you, too.",
		"I've hidden something interesting here, try to see if you can find it."
	];
	s.images = [imgDad, imgDad, imgPlayer, imgDad, imgDad, imgBrother1, imgDad, imgBrother1, imgDad, imgDad];
	
	mobPortal = true; inCreation = true;
	pc.storyPoint = "first look";

}