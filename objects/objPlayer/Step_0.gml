getPlayerInput();
if(instance_number(objScreen) > 0){ return; }


if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }


xSpeed = xIn * moveSpeed;
ySpeed = yIn * moveSpeed;

if(xPush != 0){ xSpeed = xPush; xPush -= getDir(xPush); }
if(yPush != 0){ ySpeed = yPush; yPush -= getDir(yPush); }
if(abs(xPush) < 1){ xPush = 0; }
if(abs(yPush) < 1){ yPush = 0; }

stuckTime = 0;

x += xSpeed;
while(playerInBlock() && stuckTime < 50){ x -= getDir(xSpeed); stuckTime ++; }

y += ySpeed;
while(playerInBlock() && stuckTime < 50){ y -= getDir(ySpeed); stuckTime ++; }

if(stuckTime >= 50){
	x = clamp(x + choose(-50, 0, 50), 0, room_width);
	y = clamp(y + choose(-50, 0, 50), 0, room_height - 150);
}


xSpot = floor(x / ww.TILE_SIZE);
ySpot = floor(y / ww.TILE_SIZE);

depth = ww.layerM - ySpot;




if(ww.lastTouchedBlock != noone){
	var tb = ww.lastTouchedBlock;
	
	if(tb.sprite_index == imgBrother1 || tb.sprite_index == imgBrother2){ 
		talkTo(tb.sprite_index); 
	}
	
	ww.lastTouchedBlock = noone;
}


if(mHold && (xM == 11 || xM == 12) && yM == 13 && inRoom != "start"){
	returnTime ++;
	if(returnTime >= 100){
		ww.makeRoom = "start"; x = 375; y = 500;
	}
} else {
	returnTime = 0;
}




if(hurtTime < 1){
	var m = mobGetClosest();
	if(m != noone){
		if(point_distance(x, y, m.x, m.y) < 30){
			playerHurt(m.pow, m);
		}
	}
}




if(acts[act] != noone){
	if(acts[act] == imgLightningWep && shotCD >= shotCDMax[act]){
		
		var m = mobGetClosest();
		if(m != noone){
			shotCD = 0;
		
			var s = instance_create_depth(x, y, ww.layerE, objShot);
			s.xt = m.x; s.yt = m.y;
		}
		
	}
}














shotCD = clamp(shotCD + 1, 0, 3000);
mp = clamp(mp + 1, 0, mpMax);
if(ww.inCreation){
	hp --;
	
	if(hp < 1){
		ww.makeRoom = "start"; x = 375; y = 500;
	}
} else {
	hp = clamp(hp + 10, 0, hpMax);
}
hurtTime = clamp(hurtTime - 1, 0, 120);


if(pausePressed){
	pausePressed = false;
	instance_create_depth(0, 0, ww.layerS, objScreenInventory);
}


if(keyboard_check_pressed(vk_backspace)){
	//hp = 10;
	//effect_create_above(ef_cloud, x, y, 1, c_yellow);
	roomDis += 10;
}


if(hurtTime > 0){
	image_alpha = random_range(.3, 1);
} else {
	image_alpha = 1;
}


