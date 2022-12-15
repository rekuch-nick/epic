if(instance_number(objScreen) > 0){ return; }


if(firstFrame){
	firstFrame = false;
	
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
}

x += xSpeed;
y += ySpeed;

ySpeed += grav;

xSpot = floor(x / 50); ySpot = floor(y / 50);



if(!passWall){
	if(pointInBlock(x, y)){
		instance_destroy();
	}
}