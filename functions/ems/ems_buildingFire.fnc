private ["_index","_object"];

_index = _this;

if ((count dtk_FirePostions) - 1 < _index)exitWith {};

_object = createVehicle ["HeliHEmpty", [0,0,0], [],0, "CAN_COLLIDE"];
_object setPos (dtk_FirePostions select _index);
_object setVehicleInit "[this,4,time,false,false] spawn core_burn;"; 
processInitCommands;

sleep random(40) + 7;
if (isNull _object)exitWith {};
if (damage _object > 0.5)exitWith {};

(_index + 1)spawn s_ems_buildingFire;