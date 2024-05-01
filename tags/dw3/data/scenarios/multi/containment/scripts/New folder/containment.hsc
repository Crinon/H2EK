(script continuous expolosion_0
	(if (= (object_get_health power_core_0) 0)
		(device_set_position base_machine_0 1)
	)
)


(script continuous expolosion_1
	(if (= (object_get_health power_core_1) 0)
		(device_set_position base_machine_1 1)
	)
)

;*
(script startup showoff
	(fade_in 0 0 0 0)
	(sleep_until (= (object_get_health power_core_1) 0) 5)
	(camera_control on)
	(camera_set 0 0)
	(sleep 60)
	(camera_set 1 120)
	(sleep 120)
	(camera_set 2 120)
	(sleep 120)
	(camera_set 3 0)
	(camera_pan 3 4 120 0 0 0 0)
	(sleep 120)
	(camera_set 5 0)
	(camera_set 6 120)
	(sleep 120)
	(camera_set 7 120)
	(sleep 120)
	(camera_set 8 0)
	(camera_pan 8 9 120 0 0 30 0)
	(sleep 120)
)
*;