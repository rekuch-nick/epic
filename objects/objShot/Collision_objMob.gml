if(aly == 1){
	
	//other.hp -= pow;
	
	mobHurt(pow, id, other.id);
	if(sprite_index == imgLightningShot){ effect_create_above(ef_ring, x, y, 0, c_yellow); }
	instance_destroy();
	
}


