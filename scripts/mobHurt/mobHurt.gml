function mobHurt(dam, who, mob){
	
	mob.hurtTime = 45;
	
	mob.hp -= dam;
	
	if(who != noone){
		if(who.bumpPow > 0){
			
			var angle = arctan2(mob.y - who.y, mob.x - who.x);
			mob.xSpeed = cos(angle) * who.bumpPow;
			mob.ySpeed = sin(angle) * who.bumpPow;
			mob.thinkCD = who.bumpPow / 2;
		}
	}
	
}