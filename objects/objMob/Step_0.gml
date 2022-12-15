if(instance_number(objScreen) > 0){ return; }


if(true){
	thinkCD --;
	if(thinkCD < 1){
		thinkCD = thinkCDMax;
		
		xt = irandom_range(0, room_width - 1);
		yt = irandom_range(0, room_height - 151);
		
		if(irandom_range(0, 99) < huntChance){
			xt = pc.x; yt = pc.y;
		}
		
		var angle = arctan2(yt - y, xt - x);
		xSpeed = cos(angle) * moveSpeed;
		ySpeed = sin(angle) * moveSpeed;
		
		if(irandom_range(0, 99) < dashChance){
			xSpeed *= 2;
			ySpeed *= 2;
		}
	}
	
	
	
	
	x += xSpeed;
	var col = passWall ? false : pointInBlock(x, y);
	if(!col){ 
		var m = mobGetClosest();
		if(m != noone){ if(point_distance(x, y, m.x, m.y) < fat){ col = true; } }
	}
	if(col){ x -= xSpeed; xSpeed = 0; }
	
	y += ySpeed;
	var col = passWall ? false : pointInBlock(x, y);
	if(!col){ 
		var m = mobGetClosest();
		if(m != noone){ if(point_distance(x, y, m.x, m.y) < fat){ col = true; } }
	}
	if(col){ y -= ySpeed; ySpeed = 0; }
	
	
	
	depth = ww.layerM - ySpot;
	if(turnToFace && image_xscale < 0 && pc.x > x){ image_xscale *= -1; }
	if(turnToFace && image_xscale > 0 && pc.x < x){ image_xscale *= -1; }
}



if(hp < 1){
	
	if(irandom_range(0, 99) < fruitChance){
		spawnPup(x, y, imgFruit);
	}
	
	pc.xp += xp;
	instance_destroy();
	
}


