if alpha > 0 {

   alpha -= 1.5/fadeTime; // alpha will reach 0 at set fade time

	if (alpha <= 0) instance_destroy();
	
} else instance_destroy();