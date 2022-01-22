//Player state happens when transitioning between rooms
function PlayerStateTransition(){
	if (instance_exists(oTransition) && instance_exists(oPlayer)) {
		oPlayer.HSpeed = 0;
		oPlayer.VSpeed = 0;
		PlayerObjectCollision();
		PlayerAnimateSprite();
	}
}