

if(pc.okPressed ||
			(pc.mClick && pc.yM == 13 && (pc.xM == 13 || pc.xM == 14) )
			){
	line ++;
	if(line >= array_length(lines)){
		instance_destroy();
	}
}