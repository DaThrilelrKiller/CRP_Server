private ["_client","_side","_object"];

_client = _this select 0;
_side = _this select 1;

{
	_object = _this select 0;
	if (isNull _object)then {
		DTK_ActionsJIP set [_forEachIndex,""];
		DTK_ActionsJIP = DTK_ActionsJIP - [""];
	}else{
		[_client,_x,"network_addAction",false,false]call network_MPExec;
	};
}forEach DTK_ActionsJIP;