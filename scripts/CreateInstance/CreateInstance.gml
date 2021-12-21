// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateInstance(xPos, yPos, layerName, obj){
	instance_create_layer(xPos, yPos, layerName, obj);
	CutsceneEndAction();
}