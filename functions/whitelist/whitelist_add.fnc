private ["_player","_unit","_whitelist","_value","_uid"];

_player = _this select 0;
_unit = _this select 1;
_whitelist = _this select 2;
_value = _this select 3;

_uid = getPlayerUid _unit;


[format["%1 - %2","Whitelist",_uid], "Whitelist", _whitelist, _value] call s_stats_write;

[_unit,_this,"whitelist_recive",false,false]call network_MPExec;
[_player,[],"whitelist_update",false,false]call network_MPExec;