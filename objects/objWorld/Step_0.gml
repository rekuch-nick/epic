if(instance_number(objScreen) > 0){ return; }

if(makeRoom != ""){
	worldClear();
	worldGen(makeRoom);
	makeRoom = "";
}





if(mobPortal){
	if(instance_number(objPortal) == 0 && instance_number(objMob) == 0){
		spawnPortal();
	}
}