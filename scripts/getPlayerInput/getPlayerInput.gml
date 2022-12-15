function getPlayerInput(){
	pc.xIn = 0;
	if(keyboard_check(vk_left) || keyboard_check(ord("A")) ){ pc.xIn --; }
	if(keyboard_check(vk_right) || keyboard_check(ord("D")) ){ pc.xIn ++; }
	
	pc.yIn = 0;
	if(keyboard_check(vk_up) || keyboard_check(ord("W")) ){ pc.yIn --; }
	if(keyboard_check(vk_down) || keyboard_check(ord("S")) ){ pc.yIn ++; }

	pc.xM = floor(mouse_x / ww.TILE_SIZE);
	pc.yM = floor(mouse_y / ww.TILE_SIZE);
	
	pc.mHold = mouse_check_button(mb_left);
	pc.mClick = mouse_check_button_pressed(mb_left);

	pc.okPressed = keyboard_check_pressed(vk_enter);
	
	pc.pausePressed = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("I"));

	//
	pc.actHold = 0;
	pc.actClick = 0;

}