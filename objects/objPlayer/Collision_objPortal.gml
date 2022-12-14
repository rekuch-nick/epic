if(instance_number(objScreen) > 0){ return; }
if(xPush != 0 || yPush != 0){ return; }

if(xSpot == other.xSpot && ySpot == other.ySpot){
	var s = instance_create_depth(0, 0, ww.layerS, objScreenPortal);
	s.targetRoom = other.targetRoom;
	worldClear();
}

