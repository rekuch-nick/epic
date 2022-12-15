

if(sprite_index == imgKey){
	spawnPortal();
}

if(sprite_index == imgFruit){
	pc.hp = clamp(pc.hp + floor(pc.hpMax / 10), 0, pc.hpMax);
}

if(sprite_index == imgLightningWep){ 
	pc.acts[1] = sprite_index; 
	pc.storyPoint = "found lightning";
	pc.hp = pc.hpMax;
	
	var s = instance_create_depth(0, 0, ww.layerS, objScreenText);
		s.lines = [
			"You found it!",
			"What is it?",
			"Something I think you'll apperciate. It's called LIGHTNING.",
			"You won't have to run from the beasts of the field any more."
		];
	s.images = [imgDad, imgPlayer, imgDad, imgDad];
	
}


instance_destroy();
