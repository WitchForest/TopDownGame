// Global game object singleton
// Initialise game and set global variables

randomize();

// Eventually a state
global.gamePaused = false; // Eventually a state
global.iCamera = instance_create_layer(0,0,layer,objCamera);

room_goto(ROOM_START)