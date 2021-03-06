private ["_side","_uid","_player","_apps","_storage","_bank","_hunger","_inventoy","_licenses","_vehicles","_weapons","_magazines","_pistol","_dob","_rifle","_x26","_warrants","_notes","_bounty","_apps1","_lifestate","_distance","_seasion","_clothing","_gear"];
_side = _this select 1;
_uid = getPlayerUID(_this select 0);
_player = (_this select 0);
_apps = switch(_side)do{ 
	case "CIV":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_background","app_gangs"]}; 
	case "UN": {["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_background"]}; 
	case "PD":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_computer","app_background"]}; 
};

_dob = [_uid,"Main", "data",[]]call s_stats_read;
_bank = [_uid,"Main", "Bank",45000]call s_stats_read;
_hunger =	[_uid,_side, "Hunger",25]call s_stats_read;
_inventoy = [_uid,_side, "Inventory",[["schluesselbund","idcard"],[1,1]]]call s_stats_read;
_licenses = [_uid,_side, "Licenses", []]call s_stats_read;
_vehicles = [_uid,_side, "Vehicles",[]]call s_stats_read;
_weapons = [_uid,_side, "Weapons",[]]call s_stats_read;
_magazines = [_uid,_side, "Magazines",[]]call s_stats_read;
_pistol = [_uid,_side, "Pistol",""]call s_stats_read;
_rifle = [_uid,_side, "Rifle",""]call s_stats_read;
_x26 = [_uid,_side, "DDOPP_X3",""]call s_stats_read;
_warrants = [_uid,_side, "Warrants",[]]call s_stats_read;
_notes = [_uid,_side, "Notes",[]]call s_stats_read;
_bounty = [_uid,_side, "Bounty",0]call s_stats_read;
_apps1 = [_uid,_side, "Apps",_apps]call s_stats_read;
_lifestate = [_uid,"Main", "lifestate",""]call s_stats_read;
_distance = [_uid,"Main", "distance",800]call s_stats_read;
_detail = [_uid,"Main", "detail",50]call s_stats_read;
_seasion = [_uid,_side, "seasion",[]]call s_stats_read;
_side1 = [_uid,"Main", "Side",[_side,0]]call s_stats_read;
_name = [_uid,"Main", "NAME",""]call s_stats_read;
_clothing = [_uid,_side, "Clothing",""]call s_stats_read;
_texutre = [_uid,_side, "Texture",[]]call s_stats_read;
_storage = [_uid,_side, "Storage",[[],[]]]call s_stats_read;
_gear = [_uid,_side, "House_Gear",[]]call s_stats_read;

_data = [_uid,(owner _player),[_bank,_hunger,_inventoy,_licenses,_vehicles,_weapons,_magazines,_pistol,_rifle,_x26,_warrants,_notes,_bounty,_apps1,_lifestate,_distance,_detail,_seasion,_side1,_name,_clothing,_texutre,_storage,_dob,_gear]];

[_player,_data,"stats_load",false,false]call network_MPExec;
_player setVariable ["id",(owner _player),true];