function playerInBlock(){
	
	
	var bol = pointInBlock(pc.x-22, pc.y+22) || 
				pointInBlock(pc.x-22, pc.y-22) || 
				pointInBlock(pc.x+22, pc.y+22) || 
				pointInBlock(pc.x+22, pc.y-22);
	
	if(pointInSpace(pc.x-22, pc.y+22) || 
				pointInSpace(pc.x-22, pc.y-22) || 
				pointInSpace(pc.x+22, pc.y+22) || 
				pointInSpace(pc.x+22, pc.y-22)
				){
		bol = true;
	}
	
	return bol;
}