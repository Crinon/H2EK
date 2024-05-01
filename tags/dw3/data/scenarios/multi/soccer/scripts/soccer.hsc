(global short blue_goals 0)
(global short red_goals 0)


(script continuous red_goal
	(sleep_until (volume_test_object tv_goal_blue ball) 5)
	(set red_goals (+ red_goals 1))
	(sound_impulse_start dw3\sounds\goal\goal none 1)
	(object_destroy ball)
	(object_create_anew ball)
)

(script continuous blue_goal
	(sleep_until (volume_test_object tv_goal_red ball) 5)
	(set blue_goals (+ blue_goals 1))
	(sound_impulse_start dw3\sounds\goal\goal none 1)
	(object_destroy ball)
	(object_create_anew ball)
)

(script startup goal_check
	(object_create_anew ball)
	(sleep_until
		(or
			(= blue_goals 3)
			(= red_goals 3)
		)
	)
	(game_won)
)