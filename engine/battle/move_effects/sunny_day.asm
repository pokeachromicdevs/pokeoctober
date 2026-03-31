BattleCommand_StartSun:
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr z, .failed

	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	farcall AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
