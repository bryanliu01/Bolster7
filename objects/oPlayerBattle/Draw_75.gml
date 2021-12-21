if(oCombatManager.introFinished) {
//Draw instance in the Draw GUI End event so that it can be drawn in front of sprites
//This is the only way to order instances
instance_create_layer(whiteLinePosX - 2, whiteLinePosY, baseUI, oWhiteLine);


//Continue drawing other sprites on top of Draw GUI End
//Draw Health GUI Frame
draw_sprite(sBaseHealthGUI, 0, baseHealthBarX, baseHealthBarY);
}