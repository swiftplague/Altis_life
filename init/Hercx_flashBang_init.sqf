// put this in the init.sqf : [] execVM "init\Hercx_flashBang_init.sqf";
player addEventHandler ["HandleDamage",
{
	if((_this select 4) == "HandGrenade_Stone")then
	{
		player setDamage 0;
		_handleRadBlur = ppEffectCreate ["radialBlur",100];
		_handleRadBlur ppEffectEnable true;
		_handleRadBlur ppEffectAdjust [0.02,0.02,0.01,0.01];
		_handleRadBlur ppEffectCommit 1;
		titleText ["","WHITE IN",6];titleFadeOut 3;
		addCamShake [20, 20, 60];
		[_handleRadBlur] spawn{

			_handleRadBlur = _this select 0;
			sleep 22;
			_var1 = 0.02;
			_var2 = 0.01;
			while {(_var1 > 0 || _var2 > 0)} do
			{
				_var1 = _var1 - 0.002;
				_var2 = _var2 - 0.002;
				_handleRadBlur ppEffectAdjust [_var1,_var1,_var2,_var2];
				_handleRadBlur ppEffectCommit 1;
				sleep 1;
			};
			_handleRadBlur ppEffectEnable false;
			ppEffectDestroy _handleRadBlur;
		};
		playSound "combat_deafness";
	};

}];