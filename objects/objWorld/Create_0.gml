TILE_SIZE = 50;
room_speed = 30;
makeRoom = "";
draw_set_font(fntPlain);
worldClear();

layerF = -100;
layerFF = -500;
layerB = -1000;
layerP = -2000;
layerM = -3000;
layerE = -4000;
layerS = -9000;

lastTouchedBlock = noone;

mobPortal = false;
inCreation = false;

instance_create_depth(0, 0, layerB - 12, objStatsWindow);
instance_create_depth(0, 0, layerS, objScreenTitle);