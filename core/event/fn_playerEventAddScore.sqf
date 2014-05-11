/*

	Adds score items to player in event;

*/

private["_value", "_current"];

_value = _this select 0;
_current = life_uinv_event_score;

if(_current + _value < 0) then
{
	_value = _current;
};

switch(true) do 
{
	case (_value > 0):
	{
		[true,"uitem_event_score",_value] call life_fnc_handleInv;
		hintSilent format["you've got %1 points!", _value];
	};
	case (_value < 0):
	{
		[false,"uitem_event_score",-_value] call life_fnc_handleInv;
		hintSilent format["points you lost %1!", -_value];
	};
};

sleep 2;
hintSilent format["Score: %1", [life_uinv_event_score] call life_fnc_numberText];