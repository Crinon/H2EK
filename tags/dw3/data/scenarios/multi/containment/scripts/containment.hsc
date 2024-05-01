;*
(script continuous expolosion_0
	(if (<= (object_get_health power_core_0) 0)
		(device_set_position base_machine_0 1)
	)
)

(script continuous expolosion_1
	(if (<= (object_get_health power_core_1) 0)
		(device_set_position base_machine_1 1)
	)
)
*;

(script command_script salutational
	(cs_shoot_point true shoot/here)
	(sleep 30)
	(cs_shoot false)
	(cs_go_to shoot/move0)
	(cs_face true shoot/look)
	(sleep 15)
	(sound_impulse_start sound\dialog\combat\elite_dogmatic\13_player\grt (ai_get_object ai_current_actor) 1)
	(sleep 60)
	(cs_face true shoot/move1)
	(cs_go_to shoot/move1)
)

(script static void salutations1
	(camera_pan 0 1 360 30 0 0 0)
)

(script static void salutations
	(cs_run_command_script salutation_man salutational)
	(camera_control true)
	(camera_set 0 0)
	(salutations1)
)
		

(script startup fade_in
	(ai_place salutation_man)
	(cinematic_fade_from_black)
	(salutations)
)