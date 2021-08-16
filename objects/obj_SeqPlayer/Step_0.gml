/// @description PLAY SEQUENCE

if (!layer_sequence_exists("Seq", CurrentSequence) and !isDone)
{

	CurrentSequence = layer_sequence_create("Seq", SeqX, SeqY, MySequence);	
	layer_sequence_play(CurrentSequence);
}

if (layer_sequence_get_headpos(CurrentSequence) != 0 and !isDone) {
	var _pos = layer_sequence_get_headpos(CurrentSequence);
	
	if (_pos > 299)
		isDone = true;
}

if (isDone)
{
	room_goto_next();	
}