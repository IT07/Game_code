if not(hasInterface) exitWith {};
[] spawn
{
	disableSerialization;
	waitUntil { uiSleep 0.1; !isNil"EPOCH_loadingScreenDone" };
	if (player nearObjects["Debug_static_F", 25] isEqualTo[]) then // If player not in debug box
	{

		#include "config.sqf"
		showCinemaBorder _useCinemaBorders;
		_fg = ppEffectCreate ["FilmGrain", 2000];
		_fg ppEffectEnable true;
		_fg ppEffectAdjust [1,20,8,50,50,true];

		private ["_nvg"];
		call
		{
			if (dayTime > 19 or daytime < 4) exitWith
			{
				_nvg = true;
			};
			// If above does not exit, set _nvg true
			_nvg = false;
		};
		camUseNVG _nvg;
		_cam = "camera" camCreate [(position player select 0) - _posX, (position player select 1) - _posY, _camZ];
		_cam camSetFOV _fov;
		_cam camCommit 0;
		_cam cameraEffect ["internal","BACK"];
		_cam camSetTarget vehicle player;
		_cam camSetRelPos [0, 0, 2];
		_cam camCommit _duration;

		[_duration, _cam, _fg] spawn
		{
			_duration = _this select 0;
			_cam = _this select 1;
			_fg = _this select 2;
			uiSleep (_duration - 0.3);
			cutText ["", "BLACK OUT", 0.3, true];
			uiSleep 1;
			cutText ["", "BLACK IN", 0.5, true];
			_cam cameraEffect ["terminate","back"];
			camDestroy _cam;
			ppEffectDestroy _fg;
		};
	};
};