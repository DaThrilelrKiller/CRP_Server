private ["_owner","_building","_unit","_uid"];

_unit = _this select 0;
_uid = _this select 2;

{
	_owner = ["Houses",_x, "Owner",""]call s_stats_read;
	
	if (_owner != "")then {
		if (_owner == _uid)then {
			_x setMarkerText format ["%1's House", name _unit];
		};
		_x setMarkerAlpha 1;
	}else{
		_x setMarkerAlpha 0;
	};
}forEAch dtk_houses;