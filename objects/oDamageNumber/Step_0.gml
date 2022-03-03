
xPlace += dir/2;
yPlace =  amp * power(xPlace - (dir * xInt), 2) - 60;


if (yPlace > abs(RESOLUTIONH) || xPlace > abs(RESOLUTIONW)) {
	instance_destroy();
}