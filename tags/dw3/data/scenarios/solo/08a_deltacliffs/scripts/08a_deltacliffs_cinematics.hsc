; CINEMATICS FOR LEVEL 08A, "DELTA CLIFFS" ============================
; =====================================================================

; GLOBALS & STUBS =====================================================

	(global short sound_offset 15)
	(global short prediction_offset 45)
	
	(script stub void 08_intro_01_predict_stub (print "predict 01"))
	
	(script stub void 08_intra1_01_predict_stub (print "predict 01"))
	(script stub void 08_intra1_02_predict_stub (print "predict 02"))
	(script stub void 08_intra1_03_predict_stub (print "predict 03"))
	
;= THE SCARAB(S) =========================================================================
;- Deadreck Pieces -------------------------------------------------------------

(global real g_scarab_interpolation1 0.25)

;= SCARAB 1 =========================================================================

(script static void scarab_idle_var01cin
    (begin
        (print "scarab_idle_var0")
        (device_set_position_track "s1" "combat:idle:var0" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_var0_no_block1cin
    (begin
        (print "scarab_idle_var0")
        (device_set_position_track "s1" "combat:idle:var0" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
    )
)

(script static void scarab_idle_to_walk_front1cin
    (begin
        (print "scarab_idle_to_walk_front")
        (device_set_position_track "s1" "combat:idle:2:walk_front" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 3.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_var01cin
    (begin
        (print "scarab_walk_front_var0")
        (device_set_position_track "s1" "combat:walk_front:var0" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_to_idle01cin
    (begin
        (print "scarab_walk_front_to_idle")
        (device_set_position_track "s1" "combat:walk_front:2:idle" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 3.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_15_left1cin
    (begin
        (print "scarab_idle_turn_15_left")
        (device_set_position_track "s1" "combat:turn_15_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_15_right1cin
    (begin
        (print "scarab_idle_turn_15_right")
        (device_set_position_track "s1" "combat:turn_15_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_22_left1cin
    (begin
        (print "scarab_idle_turn_22_left")
        (device_set_position_track "s1" "combat:turn_22_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_22_right1cin
    (begin
        (print "scarab_idle_turn_22_right")
        (device_set_position_track "s1" "combat:turn_22_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_45_left1cin
    (begin
        (print "scarab_idle_turn_45_left")
        (device_set_position_track "s1" "combat:turn_45_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_45_right1cin
    (begin
        (print "scarab_idle_turn_45_right")
        (device_set_position_track "s1" "combat:turn_45_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_idle_t_45_right_slow1cin
    (begin
        (print "scarab_idle_turn_45_right_slow")
        (device_set_position_track "s1" "combat:turn_45_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 6.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_15_left1cin
    (begin
        (print "scarab_walk_front_turn_15_left")
        (device_set_position_track "s1" "combat:walk_front_turn_15_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_15right1cin
    (begin
        (print "scarab_walk_front_turn_15_right")
        (device_set_position_track "s1" "combat:walk_front_turn_15_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_22_left1cin
    (begin
        (print "scarab_walk_front_turn_22_left")
        (device_set_position_track "s1" "combat:walk_front_turn_22_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_22right1cin
    (begin
        (print "scarab_walk_front_turn_22_right")
        (device_set_position_track "s1" "combat:walk_front_turn_22_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_45_left1cin
    (begin
        (print "scarab_walk_front_turn_45_left")
        (device_set_position_track "s1" "combat:walk_front_turn_45_left" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

(script static void scarab_walk_front_t_45right1cin
    (begin
        (print "scarab_walk_front_turn_45_right")
        (device_set_position_track "s1" "combat:walk_front_turn_45_right" g_scarab_interpolation1)
        (device_animate_position "s1" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s1") 1.0) 1)
    )
)

;= SCARAB 2 =========================================================================
(script static void scarab_idle_var02cin
	(print "scarab_idle_var0")
	(device_set_position_track s2 combat:idle:var0 g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_to_walk_front2cin
	(print "scarab_idle_to_walk_front")
	(device_set_position_track s2 combat:idle:2:walk_front g_scarab_interpolation1)
	(device_animate_position s2 1.0 3 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_var02cin
	(print "scarab_walk_front_var0")
	(device_set_position_track s2 combat:walk_front:var0 g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_to_idle02cin
	(print "scarab_walk_front_to_idle")
	(device_set_position_track s2 combat:walk_front:2:idle g_scarab_interpolation1)
	(device_animate_position s2 1.0 3 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_15_left2cin
	(print "scarab_idle_turn_15_left")
	(device_set_position_track s2 combat:turn_15_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_15_right2cin
	(print "scarab_idle_turn_15_right")
	(device_set_position_track s2 combat:turn_15_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_22_left2cin
	(print "scarab_idle_turn_22_left")
	(device_set_position_track s2 combat:turn_22_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_22_right2cin
	(print "scarab_idle_turn_22_right")
	(device_set_position_track s2 combat:turn_22_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_45_left2cin
	(print "scarab_idle_turn_45_left")
	(device_set_position_track s2 combat:turn_45_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_45_right2cin
	(print "scarab_idle_turn_45_right")
	(device_set_position_track s2 combat:turn_45_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_idle_t_45_right_slow2cin
	(print "scarab_idle_turn_45_right_slow")
	(device_set_position_track s2 combat:turn_45_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 6 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_15_left2cin
	(print "scarab_walk_front_turn_15_left")
	(device_set_position_track s2 combat:walk_front_turn_15_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_15right2cin
	(print "scarab_walk_front_turn_15_right")
	(device_set_position_track s2 combat:walk_front_turn_15_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_22_left2cin
	(print "scarab_walk_front_turn_22_left")
	(device_set_position_track s2 combat:walk_front_turn_22_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_22right2cin
	(print "scarab_walk_front_turn_22_right")
	(device_set_position_track s2 combat:walk_front_turn_22_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_45_left2cin
	(print "scarab_walk_front_turn_45_left")
	(device_set_position_track s2 combat:walk_front_turn_45_left g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)
(script static void scarab_walk_front_t_45right2cin
	(print "scarab_walk_front_turn_45_right")
	(device_set_position_track s2 combat:walk_front_turn_45_right g_scarab_interpolation1)
	(device_animate_position s2 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s2) 1.0) 1)
)

;= SCARAB 3 =========================================================================

(script static void scarab_walk_front_var03cin
	(print "scarab_walk_front_var0")
	(device_set_position_track s3 combat:walk_front:var0 g_scarab_interpolation1)
	(device_animate_position s3 1.0 4 0 0 true)
	(sleep_until (>= (device_get_position s3) 1.0) 1)
)

;= SCARAB 4 =========================================================================

(script static void scarab_walk_front_var04cin
    (begin
        (print "scarab_walk_front_var0")
        (device_set_position_track "s4" "combat:walk_front:var0" g_scarab_interpolation1)
        (device_animate_position "s4" 1.0 4.0 0.0 0.0 true)
        (sleep_until (>= (device_get_position "s4") 1.0) 1)
    )
)

; C08_INTRO -----------------------------------------------------------
; SOUND ---------------------------------------------------------------
	
(script dormant c08_intro_foley_01
	(sleep 0)
	(sound_impulse_start sound\cinematics\08_deltacliffs\c08_intro\foley\c08_intro_01_fol none 1)
	(print "c08_intro foley 01 start")
	)

; EFFECTS & LIGHTING --------------------------------------------------

(script dormant intro_fov

	(sleep 279)
	(print "fov change: 70 -> 50 over 0 ticks")
	(camera_set_field_of_view 50 0)

	)
	
(script dormant intro_dof

	(sleep 484)
	(cinematic_screen_effect_start true)
	(cinematic_screen_effect_set_depth_of_field 2 0 0 0 .5 .5 0)
	(print "rack focus")

	(sleep 60)
	(print "rack focus")
	(cinematic_screen_effect_set_depth_of_field 2 0 .5 1 .5 0 1)

	(sleep 103)
	(cinematic_screen_effect_stop)
	(print "rack focus stop")

	)
	
(script dormant effect_teleport
	(sleep 240)
	(print "effect - teleport")
	(effect_new_on_object_marker effects\gameplay\cinematic_teleport teleport "marker")
	)
	
(script dormant cinematic_lighting_intro
	
	(cinematic_lighting_set_primary_light 16 -32 0.501961 0.501961 0.4)
	(cinematic_lighting_set_secondary_light 13 120 0.231373 0.231373 0.388235)
	(cinematic_lighting_set_ambient_light 0.14902 0.14902 0.101961)
	
	(object_uses_cinematic_lighting dervish 1)
	(object_uses_cinematic_lighting intro_plasma_rifle 1)
	
	)

; ---------------------------------------------------------------------
	
(script dormant plasma_rifle_attach
	(sleep 705)
	(objects_attach dervish "right_hand_elite" intro_plasma_rifle "")
	)

(script static void c08_intro_setup

	(object_create_anew dervish)
	(object_create_anew teleport)
	(object_create_anew intro_plasma_rifle)
	
	(object_cinematic_lod dervish true)

	(wake c08_intro_foley_01)

	(wake effect_teleport)
	(wake intro_fov)
;	(wake intro_dof)
	
	(wake plasma_rifle_attach)
	
	(wake cinematic_lighting_intro)
	
	)

(script static void c08_intro

	(sound_class_set_gain amb 0 0)

	(texture_cache_flush)
	(geometry_cache_flush)

	(switch_bsp_by_name deltacontrolroom_bsp0)
	(sleep 1)

	(fade_out 0 0 0 0)
	
	(camera_control on)
	(cinematic_start_movie "deltacliffs_intro")
	(cinematic_start)
	(set cinematic_letterbox_style 1)
	(camera_set_field_of_view 70 0)
	
	(sound_class_set_gain amb 1 60)
	
; 	PREDICTION ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	(08_intro_01_predict_stub)
	(sound_impulse_predict sound\cinematics\08_deltacliffs\c08_intro\foley\c08_intro_01_fol)
	(sleep 100)
	
	(c08_intro_setup)
	
	(camera_set_animation_relative objects\characters\cinematic_camera\08_intro\08_intro "08_intro_01" none "anchor_flag_intro")
	(custom_animation_relative dervish objects\characters\dervish\08_intro\08_intro "dervish_01" false anchor_intro)

	(fade_in 0 0 0 30)

	(sleep (- (camera_time) 15))
	
	(fade_out 1 1 1 15)
	(sleep 15)
	
	(sound_class_set_gain amb 0 15)
	(sleep 15)
	
	(object_destroy dervish)
	(object_destroy intro_plasma_rifle)
	
	)

; C08_INTRA1 SCENE 01 -------------------------------------------------
; SOUND ---------------------------------------------------------------
	
(script dormant c08_intra1_foley_01
	(sleep 0)
	(sound_impulse_start sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_01_fol none 1)
	(print "c08_intra1 foley 01 start")
	)
	
(script dormant c08_2010_soc
	(sleep 461)
	(sound_impulse_start sound\dialog\levels\08_controlroom\cinematic\c08_2010_soc commander 1)
	(cinematic_subtitle c08_2010_soc 3)
	)

; EFFECTS & LIGHTING --------------------------------------------------

(script dormant c04_intra1_dof_01

	(time_code_reset)
	(time_code_show 1)
	(time_code_start 1)

	(sleep 80)
	(cinematic_screen_effect_start 1)
	(cinematic_screen_effect_set_depth_of_field 1.5 0 0 0 .5 .5 0)
	(print "rack focus")

	(time_code_reset)

	(sleep 120)
	(cinematic_screen_effect_set_depth_of_field 1.5 0 .5 .5 .5 0 .5)
	(print "rack focus")
	
	(time_code_reset)
	
	(sleep 50)
	(cinematic_screen_effect_set_depth_of_field 2 0 0 0 .5 .5 0)
	(print "rack focus")
	
	(time_code_reset)
	
	(sleep 86)
	(cinematic_screen_effect_stop)
	(print "rack focus stop")
	
	)
	
(script dormant cinematic_lighting_intra1_01
	
	(cinematic_lighting_set_primary_light 40 134 0.321569 0.321569 0.290196)
	(cinematic_lighting_set_secondary_light 8 274 0.301961 0.290196 0.45098)
	(cinematic_lighting_set_ambient_light 0.121569 0.121569 0.0705882)
	
	(object_uses_cinematic_lighting dervish_01 1)
	(object_uses_cinematic_lighting commander 1)
	(object_uses_cinematic_lighting wraith_01 1)
	(object_uses_cinematic_lighting scarab_01 1)
	
	)

; ---------------------------------------------------------------------

(script static void c08_intra1_01_setup

	(object_create_anew dervish_01)
	(object_create_anew commander)
	(object_create_anew wraith_01)
	
	(object_cinematic_lod dervish_01 true)
	(object_cinematic_lod commander true)
	(object_cinematic_lod wraith_01 true)
	
	(cinematic_clone_players_weapon dervish_01 "right_hand_elite" "")

	(wake c08_intra1_foley_01)
	
	(wake c08_2010_soc)
	
	(wake c04_intra1_dof_01)
	(wake cinematic_lighting_intra1_01)
	
	)

(script static void c08_intra1_scene_01

	(fade_out 1 1 1 0)
	
	(camera_control on)
	(cinematic_start_movie "deltacliffs_intra1")
	(cinematic_start)
	(cinematic_outro_start)
	(set cinematic_letterbox_style 1)
	(camera_set_field_of_view 50 0)
	
	(cinematic_lightmap_shadow_enable)
	
; 	PREDICTION ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	(08_intra1_01_predict_stub)
	(sound_impulse_predict sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_01_fol)
	(sleep prediction_offset)
	
	(c08_intra1_01_setup)
	
	(camera_set_animation_relative objects\characters\cinematic_camera\08_intra1\08_intra1 "08_intra1_01" none "anchor_flag_intra1")

	(custom_animation_relative dervish_01 objects\characters\dervish\08_intra1\08_intra1 "dervish_01" false anchor_intra1)
	(custom_animation_relative commander objects\characters\elite\08_intra1\08_intra1 "commander_01" false anchor_intra1)
	
	(custom_animation_relative wraith_01 objects\vehicles\wraith\08_intra1\08_intra1 "wraith_01" false anchor_intra1)

	(fade_in 1 1 1 15)

; 	PREDICTION ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	(sleep (- (camera_time) prediction_offset))
	(08_intra1_02_predict_stub)
	
	(sleep (- (camera_time) sound_offset))
	(sound_impulse_predict sound\cinematics\08_deltacliffs\c08_intra1\music\c08_intra1_02_mus)
	(sound_impulse_predict sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_02_fol)
	
	(sleep (camera_time))
	
	)
	
; C08_INTRA1 SCENE 02 -------------------------------------------------
; SOUND ---------------------------------------------------------------

(script dormant c08_intra1_sound_scene2_01

	(sound_class_set_gain vehicle 0 0)

	(object_set_function_variable phantom_01 "engine_hack" 1 0)
	(object_set_function_variable phantom_02 "engine_hack" 1 0)
	
	(object_set_function_variable phantom_01 "engine_audio" 1 0)
	(object_set_function_variable phantom_02 "engine_audio" 1 0)
	
	(object_set_function_variable phantom_01 "hover_audio" 1 0)
	(object_set_function_variable phantom_02 "hover_audio" 1 0)
	
	(sleep 210)
	(sound_class_set_gain vehicle 1 60)
	
	(sleep 60)
	(sound_class_set_gain vehicle 0 150)

	)

(script dormant c08_intra1_score_02
	(sleep 337)
	(sound_impulse_start sound\cinematics\08_deltacliffs\c08_intra1\music\c08_intra1_02_mus none 1)
	(print "c08_intra1 score 02 start")
	)

(script dormant c08_intra1_foley_02
	(sleep 0)
	(sound_impulse_start sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_02_fol none 1)
	(print "c08_intra1 foley 02 start")
	)

(script dormant c08_2020_der
	(sleep 0)
	(sound_impulse_start sound\dialog\levels\08_controlroom\cinematic\c08_2020_der dervish_01 1)
	(cinematic_subtitle c08_2020_der 3)
	)
	
(script dormant c08_2030_soc
	(sleep 77)
	(sound_impulse_start sound\dialog\levels\08_controlroom\cinematic\c08_2030_soc commander 1)
	(cinematic_subtitle c08_2030_soc 4)
	)

; EFFECTS & LIGHTING --------------------------------------------------
	
(script dormant c04_intra1_dof_02

	(sleep 427)
	(cinematic_screen_effect_start 1)
	(cinematic_screen_effect_set_depth_of_field 1.22 .5 .5 0 0 0 0)
	(print "rack focus")

	(sleep 84)
	(cinematic_screen_effect_set_depth_of_field .5 .5 .5 0 0 0 0)
	(print "rack focus")
	
	(sleep 100)
	(cinematic_screen_effect_set_depth_of_field .5 .5 0 0 0 .5 .5)
	(print "rack focus")
	
	)
	
(script dormant cinematic_lighting_intra1_02
	
	(cinematic_lighting_set_primary_light 40 134 0.321569 0.321569 0.290196)
	(cinematic_lighting_set_secondary_light 8 274 0.301961 0.290196 0.45098)
	(cinematic_lighting_set_ambient_light 0.121569 0.121569 0.0705882)
	
	(object_uses_cinematic_lighting phantom_01 1)
	(object_uses_cinematic_lighting phantom_02 1)
	
	)

(script static void scarab1cin
    (begin
        (begin
            (scarab_idle_to_walk_front1cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_to_idle01cin)
            (scarab_idle_t_45_right1cin)
            (scarab_idle_t_45_right1cin)
            (scarab_idle_to_walk_front1cin)
            (scarab_walk_front_t_45right1cin)
            (scarab_walk_front_t_15_left1cin)
            (scarab_walk_front_t_15_left1cin)
            (scarab_walk_front_t_45right1cin)
            (scarab_walk_front_t_15right1cin)
            (scarab_walk_front_t_15right1cin)
            (scarab_walk_front_t_15right1cin)
            (scarab_walk_front_t_45right1cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_t_15right1cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_t_22_left1cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_t_45_left1cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_var01cin)
            (scarab_walk_front_t_45_left1cin)
            (object_destroy "s1")
        )
    )
)
		
(script static void scarab2cin
	(begin
		(scarab_idle_to_walk_front2cin)
		(scarab_walk_front_t_45right2cin)
		(scarab_walk_front_t_15_left2cin)		
		(scarab_walk_front_t_15_left2cin)
		(scarab_walk_front_t_45right2cin)
		(scarab_walk_front_t_15right2cin)
		(scarab_walk_front_t_15right2cin)
		(scarab_walk_front_t_15right2cin)
		(scarab_walk_front_t_45right2cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_t_15right2cin)
		(scarab_walk_front_to_idle02cin)
		(scarab_idle_t_45_right2cin)
		(scarab_idle_t_45_right2cin)
		(scarab_idle_t_22_right2cin)
		(scarab_idle_to_walk_front2cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_t_22_left2cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(scarab_walk_front_var02cin)
		(object_destroy s2)
	)
)

(script dormant scarab1_wake_cin
    (begin
        (object_create "s1")
        (scarab1cin)
    )
)

(script dormant scarab2_wake_cin
    (begin
        (object_create "s2")
        (scarab2cin)
    )
)

(script dormant wake_the_scarabs3
    (begin
        (sleep 245)
        (wake scarab1_wake_cin)
        (wake scarab2_wake_cin)
    )
)

(script dormant fov_change
	(sleep 336)
	(camera_set_field_of_view 70 0)
)

; ---------------------------------------------------------------------

(script static void c08_intra1_02_setup

	(object_create_anew phantom_01)
	(object_create_anew phantom_02)
	
	(object_cinematic_lod phantom_01 true)
	(object_cinematic_lod phantom_02 true)

	(wake c08_intra1_sound_scene2_01)

	(wake c08_intra1_score_02)
	(wake c08_intra1_foley_02)
	
	(wake c08_2020_der)
	(wake c08_2030_soc)
	(wake wake_the_scarabs3)
	
;	(wake c04_intra1_dof_02)
	(wake cinematic_lighting_intra1_02)
	(wake fov_change)
	
	)
	
(script static void c08_intra1_02_cleanup

	(object_destroy dervish_01)
	(object_destroy commander)
	(object_destroy phantom_02)
	
	)

(script static void c08_intra1_scene_02
	
	(c08_intra1_02_setup)
	
	(print "08_intra1_02")
	(camera_set_animation_relative dw3\objects\characters\cinematic_camera\08_intra1\08_intra1 "08_intra1_02" none "anchor_flag_intra1")

	(custom_animation_relative dervish_01 objects\characters\dervish\08_intra1\08_intra1 "dervish_02" false anchor_intra1)
	(custom_animation_relative commander objects\characters\elite\08_intra1\08_intra1 "commander_02" false anchor_intra1)
	
	(custom_animation_relative wraith_01 objects\vehicles\wraith\08_intra1\08_intra1 "wraith_02" false anchor_intra1)
	(custom_animation_relative phantom_01 objects\vehicles\phantom\animations\08_intra1\08_intra1 "phantom01_02" false anchor_intra1)
	(custom_animation_relative phantom_02 objects\vehicles\phantom\animations\08_intra1\08_intra1 "phantom02_02" false anchor_intra1)

; 	PREDICTION ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	(sleep (- (camera_time) prediction_offset))
	(08_intra1_03_predict_stub)
	
	(sleep (- (camera_time) sound_offset))
	(sound_impulse_predict sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_03_fol)
	
	(sleep (camera_time))
	
	(c08_intra1_02_cleanup)
	
	)
	
; C08_INTRA1 SCENE 2.5 -------------------------------------------------

(script static void c08_intra_scene_2.5
	(camera_control on)
	(camera_set_field_of_view 55 0)
	(camera_pan 0 1 154 30 0 0 0)
	(sleep 124)
	(object_create s3)
	(sleep 34)
	(object_destroy s2)
)
	
; C08_INTRA1 SCENE 03 -------------------------------------------------
; SOUND ---------------------------------------------------------------

(script dormant c08_intra1_sound_scene3_01

	(object_set_function_variable phantom_01 "engine_hack" 0 0)
	(object_set_function_variable phantom_02 "engine_hack" 0 0)

	(object_set_function_variable phantom_01 "engine_audio" 0 0)
	(object_set_function_variable phantom_02 "engine_audio" 0 0)

	(object_set_function_variable phantom_01 "hover_audio" 0 0)
	(object_set_function_variable phantom_02 "hover_audio" 0 0)

	(sound_class_set_gain vehicle 1 30)

	(sleep 120)
	(object_set_function_variable phantom_01 "engine_hack" 1 180)
	(object_set_function_variable phantom_02 "engine_hack" 1 180)

	(object_set_function_variable phantom_01 "engine_audio" 1 180)
	(object_set_function_variable phantom_02 "engine_audio" 1 180)

	(object_set_function_variable phantom_01 "hover_audio" 1 180)
	(object_set_function_variable phantom_02 "hover_audio" 1 180)

	(sound_class_set_gain vehicle 0 180)

	)

(script dormant c08_intra1_foley_03
	(sleep 0)
	(sound_impulse_start sound\cinematics\08_deltacliffs\c08_intra1\foley\c08_intra1_03_fol none 1)
	(print "c08_intra1 foley 03 start")
	)

(script dormant c08_2040_tar
	(sleep 268)
	(sound_impulse_start sound\dialog\levels\08_controlroom\cinematic\c08_2040_tar tartarus 1)
	(cinematic_subtitle c08_2040_tar 2)
	)

; EFFECTS & LIGHTING --------------------------------------------------
	
(script dormant cinematic_lighting_intra1_03
	
	(cinematic_lighting_set_primary_light 40 134 0.321569 0.321569 0.290196)
	(cinematic_lighting_set_secondary_light 8 274 0.301961 0.290196 0.45098)
	(cinematic_lighting_set_ambient_light 0.121569 0.121569 0.0705882)
	
	(object_uses_cinematic_lighting tartarus 1)
	(object_uses_cinematic_lighting miranda 1)
	(object_uses_cinematic_lighting monitor 1)
	(object_uses_cinematic_lighting brute_01 1)
	(object_uses_cinematic_lighting brute_02 1)
	(object_uses_cinematic_lighting brute_03 1)
	(object_uses_cinematic_lighting brute_04 1)
	
	)
	
(script static void scarab3cin
    (begin
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
        (scarab_walk_front_var03cin)
    )
)

(script static void scarab4cin
    (begin
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
        (scarab_walk_front_var04cin)
    )
)

(script dormant scarab3_wake_cin
    (begin
        (scarab3cin)
    )
)

(script dormant scarab4_wake_cin
    (begin
        (scarab4cin)
    )
)

(script dormant wake_the_scarabs4
    (begin
        (wake scarab3_wake_cin)
        (wake scarab4_wake_cin)
    )
)

	
; ---------------------------------------------------------------------

(script dormant show_brutes
	(sleep 199)
	(print "show brutes")
	(object_hide brute_01 false)
	(object_hide brute_02 false)
	(object_hide brute_03 false)
	(object_hide brute_04 false)
	)

(script dormant door_close
	(sleep 430)
	(print "door close")
;	(device_closes_automatically_set intra1_door true)
	(device_set_position intra1_door 0)
	)

(script static void c08_intra1_03_setup

	(object_create_anew tartarus)
	(object_create_anew miranda)
	(object_create_anew monitor)
	(object_create_anew brute_01)
	(object_create_anew brute_02)
	(object_create_anew brute_03)
	(object_create_anew brute_04)
	
	(object_set_function_variable monitor talking 0 0)
	
	(object_cinematic_lod tartarus true)
	(object_cinematic_lod miranda true)
	(object_cinematic_lod monitor true)
	(object_cinematic_lod brute_01 true)
	(object_cinematic_lod brute_02 true)
	(object_cinematic_lod brute_03 true)
	(object_cinematic_lod brute_04 true)
	
	(object_hide brute_01 true)
	(object_hide brute_02 true)
	(object_hide brute_03 true)
	(object_hide brute_04 true)
	
	(object_create_anew intra1_door)
;	(device_closes_automatically_set intra1_door false)
	(device_set_position_immediate intra1_door 1)

	(wake show_brutes)
	(wake door_close)
	
	(wake c08_intra1_sound_scene3_01)
	(wake c08_intra1_foley_03)
	(wake c08_2040_tar)
	(wake wake_the_scarabs4)
	
	(wake cinematic_lighting_intra1_03)
	
	)
	
(script static void c08_intra1_03_cleanup

	(object_destroy tartarus)
	(object_destroy miranda)
	(object_destroy monitor)
	(object_destroy_containing brute)
	(object_destroy phantom_01)
	
	)

(script static void c08_intra1_scene_03
	(print "c08_intra1_scene_03")

	(cinematic_lightmap_shadow_enable)
	(camera_set_field_of_view 50 0)
	
	(c08_intra1_03_setup)
	
	(camera_set_animation_relative objects\characters\cinematic_camera\08_intra1\08_intra1 "08_intra1_03" none "anchor_flag_intra1")

	(custom_animation_relative tartarus objects\characters\brute\08_intra1\08_intra1 "tartarus_03" false anchor_intra1)
	(custom_animation_relative miranda objects\characters\miranda\08_intra1\08_intra1 "miranda_03" false anchor_intra1)
	(custom_animation_relative monitor objects\characters\monitor\08_intra1\08_intra1 "monitor_03" false anchor_intra1)
	
	(custom_animation_relative brute_01 objects\characters\brute\08_intra1\08_intra1 "brute01_03" false anchor_intra1)
	(custom_animation_relative brute_02 objects\characters\brute\08_intra1\08_intra1 "brute02_03" false anchor_intra1)
	(custom_animation_relative brute_03 objects\characters\brute\08_intra1\08_intra1 "brute03_03" false anchor_intra1)
	(custom_animation_relative brute_04 objects\characters\brute\08_intra1\08_intra1 "brute04_03" false anchor_intra1)
	
	(custom_animation_relative phantom_01 objects\vehicles\phantom\animations\08_intra1\08_intra1 "phantom01_03" false anchor_intra1)

	(sleep (- (camera_time) 15))
	
	(fade_out 1 1 1 15)
	(sleep 15)
	
	(c08_intra1_03_cleanup)
	
	(cinematic_lightmap_shadow_disable)
	
	)

; C08_INTRA_1 MASTER SCRIPT ===========================================
; =====================================================================

(script static void c08_intra1
	
	(texture_cache_flush)
	(geometry_cache_flush)
	
	(switch_bsp_by_name deltacontrolroom_bsp0)
	(sleep 1)
	
	(c08_intra1_scene_01)
	(c08_intra1_scene_02)
	(c08_intra_scene_2.5)
	(c08_intra1_scene_03)
	
	(cinematic_lightmap_shadow_disable)
	
	)