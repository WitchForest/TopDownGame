switch (argument0)
{
	case 0: // default value
		break;
		
	case 1:
		NewTextBox("We are a vegetarian. \n Thanks anyway", 1);
		break;
		
	case 2:
		NewTextBox("Oh! Eggs! Pass them in!", 1, ["3:Pass egg", "0:My egg!"]);
		break;
		
	case 3:
		NewTextBox("*You hear many mouths munching in the log*", 1);
		break;
}