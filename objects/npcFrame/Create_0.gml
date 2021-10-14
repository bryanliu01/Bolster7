PortraitIndex = [0];
Voice = vDefault;
Name = "Anonymous";
Text = ["This person has nothing to say."];
Speakers = [id];

//nextLine function works as this, refer to npcEduard for more details
//nextLine is an array with elements inside
//If the current element is -1, move to next dialogue in Text array
//If the current element is -2, exit dialogue with NPC
//If Text array has dialogue choices i.e. array inside array, then nextLine
//will have an array inside with index values directing the dialogue in the Text Array
nextLine = [-1];
scripts = -1;

