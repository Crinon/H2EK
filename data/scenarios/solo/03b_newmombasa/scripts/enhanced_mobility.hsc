
;armour abilites by noblemods
;*
features:
-bullet time (back button on controller, c in sapien binds)
-side-to-side thruster pack (double jump and look left or right)
-ground pound (crouch in midair)
*;
(global boolean is_slowed false) ;whether we should bullet time
(global short ticks_since_jump 0) ;ticks spent since the last double jump 
(global short dbl_input_interval 30) ; the ticks between jumps to trigger a double
(global short dbljump_cooldown 90) ; cooldown between double jumps
(global short ticks_since_dbljump 90) ; ticks counted since the last jump
(global short bullettime_meter 150) ; how many ticks we can non-stop use bullet time for - see the < sign in its function for the max
(global	short thrust_right 0)

(script static void check_jump
	(if (and (> dbl_input_interval ticks_since_jump) (> ticks_since_dbljump dbljump_cooldown)) ;test for double jumps
	(begin
		(print "double jump!!!!")
		(set thrust_right 0)
		(if (player_action_test_look_relative_left)
			(set thrust_right 5)
		)
		(if (player_action_test_look_relative_right)
			(set thrust_right -5)
		)
        (if (not (= thrust_right 0))
            (begin
            (effect_new_on_object_marker "enhanced_mobility\thruster_pack_feedback" (player0) "body")
		    (object_set_velocity (player0) 0 thrust_right 0)
		    (sleep 6)
		    (object_set_velocity (player0) 0 thrust_right 0)
		    (sleep 6)
		    (object_set_velocity (player0) 0 (* 0.5 thrust_right) 0)
		    (set ticks_since_dbljump 5)
            )
        )
	)
	(player_action_test_reset)
	)
)

(script static void bullet_time
	(damage_object "enhanced_mobility\bullet_time" (player0))
	(set is_slowed (not is_slowed))
	(print "player action positive!!!")

	(if (= is_slowed true)
	(begin
		(set game_speed 0.5)
	)
	(begin ;else
		(set game_speed 1.0)
	)
	)
)

(script continuous thruster_or_bullettime
	(if (player_action_test_jump)
	(begin
		(print "jumped!!!!")
		(check_jump)
		(sleep_until (not (player_action_test_jump)) 1)
		(set ticks_since_jump 0)
	)
	)
	(if (player_action_test_back) ;let's  start bullet time!
	(begin
		(bullet_time)
		(sleep 5)
		(player_action_test_reset)
		(sleep_until (not (player_action_test_back)) 1)
	)
	)
	
)



(script continuous increment
	(set ticks_since_jump (+ ticks_since_jump 1))
	(set ticks_since_dbljump (+ ticks_since_dbljump 1))
	(player_action_test_reset)
	(if is_slowed
		(begin
			(if (> bullettime_meter 0) ;limit to 0, then turn off the bullet time
				(begin
				(set bullettime_meter (- bullettime_meter 1))
				)
				(begin ;naughty gamer using too much bullet time! this isn't F.E.A.R!!!!
				(damage_object "enhanced_mobility\bullet_time" (player0))
				(set is_slowed false)
				(set bullettime_meter 1) 	
				(set game_speed 1.0)
				)
			)
		)
		(begin ;else do this
			(if (< bullettime_meter 150) ;increase it if we're not reaching the limit
				(set bullettime_meter (+ bullettime_meter 1))
			)
		)
	)
)
