// Global game object singleton
// Initialise game and set global variables

randomize();

// Eventually a state
global.gamePaused = false; // Eventually a state
global.iCamera = instance_create_layer(0,0,layer,objCamera);
global.textSpeed = 0.75;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = -1;

global.iLifted = noone; // instance id of entity of what charater is lifting. Should be part of base object

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START)