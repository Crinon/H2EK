(global boolean pt1 false)
(global boolean pt2 false)
(global boolean cortana_spawned false)

(script command_script cs_expand_cortana
	(object_set_scale (ai_get_object ai_current_actor) 0.01 0)
	(object_cannot_take_damage (ai_get_object ai_current_actor))
	(ai_disregard (ai_get_object ai_current_actor) true)
	(sleep 5)
	(object_dynamic_simulation_disable (ai_get_object ai_current_actor) true)
	(unit_set_emotional_state (ai_get_unit ai_current_actor) "happy" 0.5 0)
	(effect_new_on_object_marker effects\objects\characters\cortana\cortana_on_off_65 (ai_get_object ai_current_actor) "effect")
	(sleep 1)
	(object_hide (ai_get_object ai_current_actor) false)
	(object_set_scale (ai_get_object ai_current_actor) 0.65 20)
	(cs_face_object true (ai_get_object sucker))
	(sleep 60)
	(sound_impulse_start sound\evpn\10 (ai_get_object cortana) 1)
	(sleep 60)
	(cs_face_object false (ai_get_object sucker))
	(cs_look_object true (ai_get_object sucker))
	(sleep_forever)
)

(script command_script sucker
	(custom_animation_loop (unit (list_get (ai_actors sucker) 0)) objects\characters\elite\elite "uplink_station" TRUE)
	(sleep_until (= cortana_spawned true))
	(cs_stop_custom_animation)
	(cs_face_object true (ai_get_object cortana))
	(sleep 10)
	(sound_impulse_start sound\dialog\combat\elite_loose\21_yelp\srprs (ai_get_object sucker) 1)
	(custom_animation (unit (list_get (ai_actors sucker) 0)) objects\characters\elite\elite "combat:pistol:surprise_front" TRUE)
	(sleep 90)
	(sound_impulse_start sound\dialog\combat\elite_loose\21_yelp\srprs (ai_get_object sucker) 1)
	(cs_face_object true (ai_get_object sentinels/a))
	(sleep 45)
	(sound_impulse_start sound\dialog\combat\elite_loose\21_yelp\srprs (ai_get_object sucker) 1)
	(cs_face_object true (ai_get_object sentinels/b))
	(sleep 45)
	(cs_face_object true (ai_get_object cortana))
	(sound_impulse_start sound\dialog\combat\elite_loose\22_roar\brsrk (ai_get_object sucker) 1)
	(sleep 15)
	(custom_animation (unit (list_get (ai_actors sucker) 0)) objects\characters\elite\elite "combat:pistol:berserk" TRUE)
	(sleep_forever)
)

(script dormant hold_fire
	(ai_allegiance covenant sentinel)
	(sleep 99)
	(ai_allegiance_remove covenant sentinel)
)
	

(script command_script sen1
	(cs_fly_to fly/p1)
	(sleep 60)
	(cs_face_object true (ai_get_object sucker))
)

(script command_script sen0
	(wake hold_fire)
	(cs_fly_to fly/p0)
	(sleep 60)
	(cs_face_object true (ai_get_object sucker))
)

;*

(script command_script dog_bag
	(cs_look true "look/p0")
	(sleep_until (= pt1 true))
	(sleep 140)
	(set pt2 true)
	(sleep_until (= pt2 true))
	(sound_impulse_start sound\dialog\combat\elite_dogmatic\13_player\grt (ai_get_object important_people/dog) 1)
	(sleep 90)
	(cs_look_object true (ai_get_object important_people/vadam))
	(sleep 90)
	(cs_look true "look/p0")
	(sleep_until
		(begin
			(cs_crouch true)
			(sleep 2)
			(cs_crouch false)
			(sleep 2)
			false
		)
		1
	)
)

(script command_script important_scene_stuff
	(cs_look true "look/p0")
	(sleep 60)
	(sound_impulse_start sound\important\important (ai_get_object important_people/vadam) 1)
	(sleep 110)
	(cs_look_object true (ai_get_object "important_people/dog"))
	(set pt1 true)
	(sleep_until (= pt1 true))
	(sleep 120)
	(set pt2 true)
	(sleep_until (= pt2 true))
	(sleep 60)
	(cs_look true look/p0)
	(sleep_until
		(begin
			(cs_crouch true)
			(sleep 2)
			(cs_crouch false)
			(sleep 2)
			false
		)
		1
	)
)

(script static void important3
	(camera_set 0 0)
)

(script static void important2
	(camera_pan 1 2 180 30 0 0 0)
	(sleep 155)
	(important3)
)

(script static void important
	(cs_run_command_script important_people/vadam important_scene_stuff)
	(cs_run_command_script important_people/dog dog_bag)
	(camera_control true)
	(camera_set 0 0)
	(sleep 210)
	(important2)
)
*;

(script static void evpn6
	(camera_set 5 0)
)

(script static void evpn5
	(camera_set 4 0)
	(sound_impulse_start sound\dialog\combat\sentinel\seefoe b 1)
	(sleep 40)
	(evpn6)
)

(script static void evpn4
	(camera_set 3 0)
	(sleep 5)
	(sound_impulse_start sound\dialog\combat\sentinel\seefoe a 1)
	(sleep 55)
	(evpn5)
)

(script static void evpn3
	(camera_set 2 0)
	(sleep 30)
	(ai_place sentinels)
	(object_cannot_take_damage (ai_get_object sentinels))
	(sleep 15)
	(evpn4)
)

(script static void evpn2
	(camera_set 1 0)
	(sleep 5)
	(ai_place cortana)
	(set cortana_spawned true)
	(sleep 45)
	(evpn3)
)

(script static void evpn1
	(camera_control true)
	(camera_set 0 0)
	(sleep 360)
	(evpn2)
)

(script startup fade_in
	(ai_place sucker)
	(cinematic_fade_from_black)
;	(important)
	(evpn1)
)