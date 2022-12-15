function talkTo(o){
	
	
	var lines = "";
	var images = "";
	
	if(pc.inRoom == "start" && pc.storyPoint == "start"){
	
	
		if(o == imgBrother1){
			lines = [
				"I wonder what Dad made this time!",
				"It's always so wonderful."
			];
			images = [imgBrother1, imgBrother1];
		}
		
		if(o == imgBrother2){
			lines = [
				"Living here, basking in Dad's light, is amazing!",
				"Dad is the greatest."
			];
			images = [imgBrother2, imgBrother2];
		}
		
		
	}
	
	
	if(pc.storyPoint == "first look"){
	
	
		if(o == imgBrother1){
			lines = [
				"I'm going to find what Dad hid first.",
				"No better way to honor him than to do his bidding."
			];
			images = [imgBrother1, imgBrother1];
		}
		
		if(o == imgBrother2){
			lines = [
				"With you and Mike both looking, I doubt I'll be able to find whatever Dad hid.",
				"It doesn't matter, I'll honor him by looking all the same."
			];
			images = [imgBrother2, imgBrother2];
		}
		
		
	}
	
	
	
	if(pc.storyPoint == "found lightning"){
	
	
		if(o == imgBrother1){
			lines = [
				"LIGHTNING? Neat I guess.",
				"No way it's better than this FIRE I found."
			];
			images = [imgBrother1, imgBrother1];
		}
		
		if(o == imgBrother2){
			lines = [
				"You and Mike both found something?",
				"Me too, apparently it's called WIND.",
				"I wonder what else is waiting to be found down there?"
			];
			images = [imgBrother2, imgBrother2, imgBrother2];
		}
		
		
	}
	
	
		
		
	if(lines != ""){
		var s = instance_create_depth(0, 0, ww.layerS, objScreenText);
		s.lines = lines;
		s.images = images;
	}
}