///@desc Create a value that oscillates like a wave overtime
///@arg degree value to oscillate from
///@arg degree value to oscillate to
///@arg duration in milliseconds
///@arg offset time

function CreateWave(degreeFrom, degreeTo, duration, offset) {
	var degreeDifference = (degreeTo - degreeFrom) * 0.5;
	return degreeFrom + degreeDifference + sin((((current_time + 0.001) + duration * offset) / duration) * (pi * 2)) * degreeDifference;
}