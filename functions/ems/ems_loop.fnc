for "_i" from 0 to 1 step 0 do {
	
	sleep 900;
	_ems = playersNumber resistance;

	if (_ems > 0)then {
		_num = floor (random (5));	
		if (_num == 0) then
		{
			[]spawn s_ems_fire;
		};
		if (_num == 1) then
		{
			[]spawn s_ems_gasleak;
		};
		if (_num == 2) then
		{
			[]spawn s_ems_spill;
		};
		if (_num == 3)then {
			[]spawn s_accidents_spawn;
		};
	};
};
