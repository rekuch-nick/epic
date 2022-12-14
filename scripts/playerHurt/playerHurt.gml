function playerHurt(dam, who){
	
	pc.hurtTime = 45;
	
	pc.hp -= dam;
	
	if(who != noone){
		if(who.bumpPow > 0){
			
			var angle = arctan2(pc.y - who.y, pc.x - who.x);
			pc.xPush = cos(angle) * who.bumpPow;
			pc.yPush = sin(angle) * who.bumpPow;
		
		}
	}
	
}