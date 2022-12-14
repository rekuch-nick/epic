function mobGetClosest(){
	
	var best = noone;
	var bestDis = 1000000;
	
	with(objMob){
		var dis = point_distance(x, y, other.x, other.y);
		
		if(id != other.id){
			if(dis < bestDis){
				best = id;
				bestDis = dis;
			}
		}
	}
	
	
	return best;
}