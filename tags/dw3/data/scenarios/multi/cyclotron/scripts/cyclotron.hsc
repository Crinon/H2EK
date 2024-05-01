(script command_script shoot
	(cs_face true shoot/p0)
	(cs_shoot_point true shoot/p0)
	(sleep_forever)
)

(script command_script vadam
	(sleep 600)
	(sound_impulse_start sound\halofiles (ai_get_object vadam) 1)
)

(script startup fade_in
	(cinematic_fade_from_black)
)