


																-- Reverse PacMan






-- Note... When play map is made the appropriate size compared to your created pacman, the tunnels measure approximately 37 pix wide





function love.load()

	do -- load map and map images
		intro = love.graphics.newImage("graphic_assets/intro.bmp")
		intro_s = love.graphics.newImage("graphic_assets/intro_s.bmp")
		intro_h = love.graphics.newImage("graphic_assets/intro_h.bmp")
		how_to_play = love.graphics.newImage("graphic_assets/how_to_play.bmp")
		how_to_play_b = love.graphics.newImage("graphic_assets/how_to_play_b.bmp")
		ready_sign = love.graphics.newImage("graphic_assets/ready_sign.png")
		next_lvl_sign = love.graphics.newImage("graphic_assets/next_level_sign.png")
		next_lvl_sign_g = love.graphics.newImage("graphic_assets/next_level_sign_glowing.png")
		continue_button = love.graphics.newImage("graphic_assets/continue_button.png")
		continue_button_g = love.graphics.newImage("graphic_assets/continue_button_g.png")
		submit_score_sign = love.graphics.newImage("graphic_assets/submit_score_sign.png")
		map = love.graphics.newImage("graphic_assets/blankplayfieldpathmap.bmp")
		marker = love.graphics.newImage("graphic_assets/placemarker.bmp")
		s_marker = love.graphics.newImage("graphic_assets/specialplacemarker.bmp")
		s_pellet = love.graphics.newImage("graphic_assets/super_pellet.png")

		font = love.graphics.newFont(20)
		small_font = love.graphics.newFont(12)
		love.graphics.setFont(font)



	end


	do -- load node, pellet, and super pellet data

		node = {}
		node.x = {}
		node.y = {}
		node.type = {}
		node.pellet = {}

		for i = 1, 7 do
			node.x[i] = 30
		end

		node.y[1] = 90
		node.y[2] = 170
		node.y[3] = 230
		node.y[4] = 470
		node.y[5] = 530
		node.y[6] = 590
		node.y[7] = 650

		node.x[8] = 70
		node.x[9] = 70

		node.y[8] = 530
		node.y[9] = 590

		for i = 10, 16 do
			node.x[i] = 130
		end

		node.y[10] = 90
		node.y[11] = 170
		node.y[12] = 230
		node.y[13] = 350
		node.y[14] = 470
		node.y[15] = 530
		node.y[16] = 590

		for i = 17, 24 do
			node.x[i] = 190
		end

		node.y[17] = 170
		node.y[18] = 230
		node.y[19] = 290
		node.y[20] = 350
		node.y[21] = 410
		node.y[22] = 470
		node.y[23] = 530
		node.y[24] = 590

		for i = 25, 32 do
			node.x[i] = 250
		end

		node.y[25] = 90
		node.y[26] = 170
		node.y[27] = 230
		node.y[28] = 290
		node.y[29] = 470
		node.y[30] = 530
		node.y[31] = 590
		node.y[32] = 650

		for i = 33, 40 do
			node.x[i] = 310
		end

		node.y[33] = 90
		node.y[34] = 170
		node.y[35] = 230
		node.y[36] = 290
		node.y[37] = 470
		node.y[38] = 530
		node.y[39] = 590
		node.y[40] = 650

		for i = 41, 48 do
			node.x[i] = 370
		end

		node.y[41] = 170
		node.y[42] = 230
		node.y[43] = 290
		node.y[44] = 350
		node.y[45] = 410
		node.y[46] = 470
		node.y[47] = 530
		node.y[48] = 590

		for i = 49, 55 do
			node.x[i] = 430
		end

		node.y[49] = 90
		node.y[50] = 170
		node.y[51] = 230
		node.y[52] = 350
		node.y[53] = 470
		node.y[54] = 530
		node.y[55] = 590

		node.x[56] = 490
		node.x[57] = 490

		node.y[56] = 530
		node.y[57] = 590

		for i = 58, 64 do
			node.x[i] = 530
		end

		node.y[58] = 90
		node.y[59] = 170
		node.y[60]= 230
		node.y[61] = 470
		node.y[62] = 530
		node.y[63] = 590
		node.y[64] = 650

		for i = 1, 64 do
			node.pellet[i] = 1
		end


		do --node type (always r or l first, then u or d)


		node.type[1] = "rd"
		node.type[2] = "tr"
		node.type[3] = "ru"
		node.type[4] = "rd"
		node.type[5] = "ru"
		node.type[6] = "rd"
		node.type[7] = "ru"
		node.type[8] = "ld"
		node.type[9] = "tu"
		node.type[10] = "td"
		node.type[11] = "c"
		node.type[12] = "tl"
		node.type[13] = "c"
		node.type[14] = "c"
		node.type[15] = "tr"
		node.type[16] = "lu"
		node.type[17] = "td"
		node.type[18] = "ru"
		node.type[19] = "rd"
		node.type[20] = "tl"
		node.type[21] = "tr"
		node.type[22] = "tu"
		node.type[23] = "td"
		node.type[24] = "ru"
		node.type[25] = "ld"
		node.type[26] = "tu"
		node.type[27] = "ld"
		node.type[28] = "tu"
		node.type[29] = "ld"
		node.type[30] = "tu"
		node.type[31] = "ld"
		node.type[32] = "tu"
		node.type[33] = "rd"
		node.type[34] = "tu"
		node.type[35] = "rd"
		node.type[36] = "tu"
		node.type[37] = "rd"
		node.type[38] = "tu"
		node.type[39] = "rd"
		node.type[40] = "tu"
		node.type[41] = "td"
		node.type[42] = "lu"
		node.type[43] = "ld"
		node.type[44] = "tr"
		node.type[45] = "tl"
		node.type[46] = "tu"
		node.type[47] = "td"
		node.type[48] = "lu"
		node.type[49] = "td"
		node.type[50] = "c"
		node.type[51] = "tr"
		node.type[52] = "c"
		node.type[53] = "c"
		node.type[54] = "tl"
		node.type[55] = "ru"
		node.type[56] = "rd"
		node.type[57] = "tu"
		node.type[58] = "ld"
		node.type[59] = "tl"
		node.type[60] = "lu"
		node.type[61] = "ld"
		node.type[62] = "lu"
		node.type[63] = "ld"
		node.type[64] = "lu"

		end


		do -- super pellets

			super_pellet = {}
			super_pellet.x = {}
			super_pellet.y = {}
			super_pellet.available = {}

			super_pellet.x[1] = 312
			super_pellet.y[1] = 254

			super_pellet.x[2] = 712
			super_pellet.y[2] = 254

			super_pellet.x[3] = 312
			super_pellet.y[3] = 494

			super_pellet.x[4] = 712
			super_pellet.y[4] = 494

			for i = 1, 4 do
				super_pellet.available[i] = 1
			end


		end





		do -- path deliniation

		horizontal_path = {}
		horizontal_path.y = {}
		horizontal_path.x1 = {}
		horizontal_path.x2 = {}

		horizontal_path.y[1] = 90
		horizontal_path.x1[1] = 30
		horizontal_path.x2[1] = 250

		horizontal_path.y[2] = 90
		horizontal_path.x1[2] = 310
		horizontal_path.x2[2] = 530

		horizontal_path.y[3] = 170
		horizontal_path.x1[3] = 30
		horizontal_path.x2[3] = 530

		horizontal_path.y[4] = 230
		horizontal_path.x1[4] = 30
		horizontal_path.x2[4] = 130

		horizontal_path.y[5] = 230
		horizontal_path.x1[5] = 190
		horizontal_path.x2[5] = 250

		horizontal_path.y[6] = 230
		horizontal_path.x1[6] = 310
		horizontal_path.x2[6] = 370

		horizontal_path.y[7] = 230
		horizontal_path.x1[7] = 430
		horizontal_path.x2[7] = 530

		horizontal_path.y[8] = 290
		horizontal_path.x1[8] = 190
		horizontal_path.x2[8] = 370

		horizontal_path.y[9] = 350
		horizontal_path.x1[9] = 0
		horizontal_path.x2[9] = 190

		horizontal_path.y[10] = 350
		horizontal_path.x1[10] = 370
		horizontal_path.x2[10] = 560

		horizontal_path.y[11] = 410
		horizontal_path.x1[11] = 190
		horizontal_path.x2[11] = 370

		horizontal_path.y[12] = 470
		horizontal_path.x1[12] = 30
		horizontal_path.x2[12] = 250

		horizontal_path.y[13] = 470
		horizontal_path.x1[13] = 310
		horizontal_path.x2[13] = 530

		horizontal_path.y[14] = 530
		horizontal_path.x1[14] = 30
		horizontal_path.x2[14] = 70

		horizontal_path.y[15] = 530
		horizontal_path.x1[15] = 130
		horizontal_path.x2[15] = 430

		horizontal_path.y[16] = 530
		horizontal_path.x1[16] = 490
		horizontal_path.x2[16] = 530

		horizontal_path.y[17] = 590
		horizontal_path.x1[17] = 30
		horizontal_path.x2[17] = 130

		horizontal_path.y[18] = 590
		horizontal_path.x1[18] = 190
		horizontal_path.x2[18] = 250

		horizontal_path.y[19] = 590
		horizontal_path.x1[19] = 310
		horizontal_path.x2[19] = 370

		horizontal_path.y[20] = 590
		horizontal_path.x1[20] = 430
		horizontal_path.x2[20] = 530

		horizontal_path.y[21] = 650
		horizontal_path.x1[21] = 30
		horizontal_path.x2[21] = 530




		vertical_path = {}
		vertical_path.x = {}
		vertical_path.y1 = {}
		vertical_path.y2 = {}

		vertical_path.x[1] = 30
		vertical_path.y1[1] = 90
		vertical_path.y2[1] = 230

		vertical_path.x[2] = 30
		vertical_path.y1[2] = 470
		vertical_path.y2[2] = 530

		vertical_path.x[3] = 30
		vertical_path.y1[3] = 590
		vertical_path.y2[3] = 650

		vertical_path.x[4] = 70
		vertical_path.y1[4] = 530
		vertical_path.y2[4] = 590

		vertical_path.x[5] = 130
		vertical_path.y1[5] = 90
		vertical_path.y2[5] = 590

		vertical_path.x[6] = 190
		vertical_path.y1[6] = 170
		vertical_path.y2[6] = 230

		vertical_path.x[7] = 190
		vertical_path.y1[7] = 290
		vertical_path.y2[7] = 470

		vertical_path.x[8] = 190
		vertical_path.y1[8] = 530
		vertical_path.y2[8] = 590

		vertical_path.x[9] = 250
		vertical_path.y1[9] = 90
		vertical_path.y2[9] = 170

		vertical_path.x[10] = 250
		vertical_path.y1[10] = 230
		vertical_path.y2[10] = 290

		vertical_path.x[11] = 250
		vertical_path.y1[11] = 470
		vertical_path.y2[11] = 530

		vertical_path.x[12] = 250
		vertical_path.y1[12] = 590
		vertical_path.y2[12] = 650

		vertical_path.x[13] = 310
		vertical_path.y1[13] = 90
		vertical_path.y2[13] = 170

		vertical_path.x[14] = 310
		vertical_path.y1[14] = 230
		vertical_path.y2[14] = 290

		vertical_path.x[15] = 310
		vertical_path.y1[15] = 470
		vertical_path.y2[15] = 530

		vertical_path.x[16] = 310
		vertical_path.y1[16] = 590
		vertical_path.y2[16] = 650

		vertical_path.x[17] = 370
		vertical_path.y1[17] = 170
		vertical_path.y2[17] = 230

		vertical_path.x[18] = 370
		vertical_path.y1[18] = 290
		vertical_path.y2[18] = 470

		vertical_path.x[19] = 370
		vertical_path.y1[19] = 530
		vertical_path.y2[19] = 590

		vertical_path.x[20] = 430
		vertical_path.y1[20] = 90
		vertical_path.y2[20] = 590

		vertical_path.x[21] = 490
		vertical_path.y1[21] = 530
		vertical_path.y2[21] = 590

		vertical_path.x[22] = 530
		vertical_path.y1[22] = 90
		vertical_path.y2[22] = 230

		vertical_path.x[23] = 530
		vertical_path.y1[23] = 470
		vertical_path.y2[23] = 530

		vertical_path.x[24] = 530
		vertical_path.y1[24] = 590
		vertical_path.y2[24] = 650




		end


	end

	do -- set Namcap's animation timers and variables to 0

		namcap = {}
		namcap.animation_timer = 0
		namcap.capture_animation_timer = 0
		namcap.prison_frame = 1
		namcap.direction = "right"
		namcap.rotation_degree = 0
		namcap.x = 280
		namcap.y = 530
		namcap.speed = 55 -- press "p" to unpause
		namcap.leftover_distance = 0
		namcap.super = 0
		namcap.ai_pix_counter = 0
		namcap.goal_x = 0
		namcap.goal_y = 0
		namcap.pause_super = 0

	end

	do -- load and quadrant Nampac sprite, set it to first frame

		namcap.sprite = love.graphics.newImage ("graphic_assets/NamcapII.png")
		namcap.prison = love.graphics.newImage ("graphic_assets/prison.png")

		namcap.quads = {}
		for i = 1, 8 do
			namcap.quads[i] = love.graphics.newQuad ((i-1)*32, 0, 32, 32, 256, 32)
		end

		namcap.frame = 4

	end

	do -- set up timer for testing purposes
		game_timer = 0
	end

	do -- load and quadrant ghost sprites

		ghost = {}
		red_ghost = {}
		blue_ghost = {}
		orange_ghost = {}
		pink_ghost = {}

		ghost.up_quad = love.graphics.newQuad (0, 0, 32, 32, 128, 32)
		ghost.right_quad = love.graphics.newQuad (32, 0, 32, 32, 128, 32)
		ghost.down_quad = love.graphics.newQuad (64, 0, 32, 32, 128, 32)
		ghost.left_quad = love.graphics.newQuad (96, 0, 32, 32, 128, 32)

		red_ghost.sprite = love.graphics.newImage ("graphic_assets/red_ghosts.png")
		blue_ghost.sprite = love.graphics.newImage ("graphic_assets/blue_ghosts.png")
		orange_ghost.sprite = love.graphics.newImage ("graphic_assets/orange_ghosts.png")
		pink_ghost.sprite = love.graphics.newImage ("graphic_assets/pink_ghosts.png")
		dead_ghost_sprite = love.graphics.newImage ("graphic_assets/dead_eyes.png")
		scared_ghost_sprite = love.graphics.newImage ("graphic_assets/scared_ghost.png")

		ghost.selected_border_sprite = love.graphics.newImage ("graphic_assets/ghost_selector.png")
		ghost.selected_border_quads = {}
		for i = 1, 4 do
			ghost.selected_border_quads[i] = love.graphics.newQuad ((i-1)*32, 0, 32, 32, 128, 32)
		end

		ghost.selection_animation_timer = 0
		ghost.frame = 1

		ghost.red_goal_border_sprite = love.graphics.newImage ("graphic_assets/red_target.png")
		ghost.blue_goal_border_sprite = love.graphics.newImage ("graphic_assets/blue_target.png")
		ghost.orange_goal_border_sprite = love.graphics.newImage ("graphic_assets/orange_target.png")
		ghost.pink_goal_border_sprite = love.graphics.newImage ("graphic_assets/pink_target.png")

		ghost.goal_border_quads = {}
		for i = 1, 4 do
			ghost.goal_border_quads[i] = love.graphics.newQuad ((i-1)*32, 0, 32, 32, 128, 32)
		end



	end


	do -- set initial ghost variables

		ghost.speed = 70
		ghost.leftover_distance = 0
		ghost.enter_exit_leftovers = 0
		ghost.selected = ""
		ghost.max_prison_time = 8

		red_ghost.x = 280
		red_ghost.y = 290
		red_ghost.direction = "left"
		red_ghost.state = "initial"
		red_ghost.goal_x = ""
		red_ghost.goal_y = ""
		red_ghost.prison_time = 0

		blue_ghost.x = 240
		blue_ghost.y = 350
		blue_ghost.direction = "up"
		blue_ghost.state = "initial"
		blue_ghost.goal_x = ""
		blue_ghost.goal_y = ""
		blue_ghost.prison_time = 0

		orange_ghost.x = 320
		orange_ghost.y = 350
		orange_ghost.direction = "up"
		orange_ghost.state = "initial"
		orange_ghost.goal_x = ""
		orange_ghost.goal_y = ""
		orange_ghost.prison_time = 0

		pink_ghost.x = 280
		pink_ghost.y = 350
		pink_ghost.direction = "down"
		pink_ghost.state = "initial"
		pink_ghost.goal_x = ""
		pink_ghost.goal_y = ""
		pink_ghost.prison_time = 0

		eaten_pellets = 0

	end

	do -- set game state variables

		game_state = "intro"
		level = 1
		score = 0
		possible_score = 64 + 3
		ready_sign_flash = 0
		ready_sign_hourglass = 0
		beep_counter = 0
		mouse_click_x = "N/A"
		mouse_click_y = "N/A"
		level_clear_timer = 0


	end
	--
	do -- set debugging stats and set up debugging variables

		--[[

		up_value = 0
		right_value = 0
		down_value = 0
		left_value = 0
		namcap_location = ""

		reason = "N/A"

		value_text = {}
		value_text.x = {}
		value_text.y = {}
		value_text.v = {}
		value_text.type = {}

		font = love.graphics.newFont(12)
		small_font = love.graphics.newFont(8)

		choice_node = {}
		choice_node.up_x = nil
		choice_node.up_y = nil
		choice_node.right_x = nil
		choice_node.right_y = nil
		choice_node.down_x = nil
		choice_node.down_y = nil
		choice_node.left_x = nil
		choice_node.left_y = nil

		red_multiplier = 1
		blue_multiplier = 1
		orange_multiplier = 1
		pink_multiplier = 1
		]]





	end
	--
	do -- graphic fade variables
		fade_state = "loading"
		alpha_level = 0
		next_state = "intro"
		timer = 0
		scroller_slot = {}
			scroller_slot.available = {}
			scroller_slot.y = {}
			scroller_slot.available[1] = "scores"
			scroller_slot.available[2] = "credits"
			scroller_slot.available[3] = "yes"
			scroller_slot.y[1] = 50
			scroller_slot.y[2] = 475
			scroller_slot.y[3] = 725

		score_scroller_x_var = 1300
		score_scroller_y_var = scroller_slot.y[1]
		credit_scroller_x_var = 1300
		credit_scroller_y_var = scroller_slot.y[2]

	end
	--
	do -- load music sources and variables
		intro_music = love.audio.newSource("music_assets/The Builder.mp3", "stream")
		intro_music:setLooping(true)
		intro_music:setVolume(0)
		game_music = love.audio.newSource("music_assets/Fun in a Bottle.mp3", "stream")
		game_music:setLooping(true)
		game_music:setVolume(0)
		lvl_cleared_music = love.audio.newSource("music_assets/Hammock Fight.mp3", "stream")
		lvl_cleared_music:setLooping(true)
		lvl_cleared_music:setVolume(0)
		lose_music = love.audio.newSource("music_assets/The Bandit.mp3", "stream")
		lose_music:setLooping(false)
		lose_music:setVolume(0)

		music_state = "loading"
		music_volume = 0
		next_music = intro_music


	end
	--
	do -- load sfx sources and variables
		sfx = {}
		sfx.prison = love.audio.newSource("sfx_assets/plumbing_pipes_large_squeak_bang.mp3", "static")
		sfx.prison:setVolume(.75)
		sfx.ready_beep = love.audio.newSource("sfx_assets/beep_1.mp3", "static")
		sfx.ready_beep_2 = love.audio.newSource("sfx_assets/beep_2.mp3", "static")
		sfx.ghost_exit = love.audio.newSource("sfx_assets/bugle_music_chargel.mp3", "static")
		sfx.ghost_exit:setVolume(.5)
		sfx.swipe = {}
			sfx.swipe[1] = love.audio.newSource("sfx_assets/cartoon_fast_whoosh_good_for_karate_chop_other_fast_movement_or_swipe_004.mp3", "static")
			sfx.swipe[2] = love.audio.newSource("sfx_assets/cartoon_fast_whoosh_good_for_karate_chop_other_fast_movement_or_swipe_005.mp3", "static")
			sfx.swipe[3] = love.audio.newSource("sfx_assets/cartoon_fast_whoosh_good_for_karate_chop_other_fast_movement_or_swipe_006.mp3", "static")
		sfx.ahha = love.audio.newSource("sfx_assets/cartoon_male_shouts_ah_ha_.mp3", "static")
		sfx.laugh = {}
			sfx.laugh[1] = love.audio.newSource("sfx_assets/comedy_male_cartoon_character_laughing.mp3", "static")
			sfx.laugh[2] = love.audio.newSource("sfx_assets/comedy_witch_laughing.mp3", "static")
			sfx.laugh[3] = love.audio.newSource("sfx_assets/laugh_hysterical_male.mp3", "static")
		sfx.boo = love.audio.newSource("sfx_assets/crowd_booing_loudly.mp3", "static")
		sfx.boo:setVolume(.8)
		sfx.punch = love.audio.newSource("sfx_assets/human_face_punch.mp3", "static")
		sfx.scared = love.audio.newSource("sfx_assets/male_scream_short.mp3", "static")


	end
	--
	do -- load high scores and high score saving variables

		save_slot = 1
		save_name = ""
		high_scores = {}
		high_scores.names = {}
		high_scores.scores = {}

		if not love.filesystem.exists("save_data.txt") then

			love.filesystem.write("save_data.txt", "")

			for i = 1, 6 do
				love.filesystem.append("save_data.txt", "nil\r\n")
			end

		end


		i = 1
		for line in love.filesystem.lines("save_data.txt") do

			if i > 0 and i < 4 then
				high_scores.names[i] = line
			else
				high_scores.scores[i-3] = line
			end

			i = i + 1
		end

		i = nil



	end
	--
	do -- create score scrolly

		score_scrolly = " "

		for i = 1, 3 do
			if high_scores.names[i] == "nil" then
				break
			else

				if i == 1 then
					score_scrolly = score_scrolly .. "1st Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				elseif i == 2 then
					score_scrolly = score_scrolly .. "2nd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				elseif i == 3 then
					score_scrolly = score_scrolly .. "3rd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				end
			end
		end

	end
	--
	do -- create credits scrolly
		credits = "Game Design and Coding by Christopher Ledbetter   :   All Sound Effects Provided Royalty-Free by www.freesfx.co.uk   :   All Music Provided Royalty-Free by Kevin MacLeod (incompetech.com) "
	end
	--

end


function love.update(dt)

	delta_time = dt

	mouse_pos_x, mouse_pos_y = love.mouse.getPosition( )

	do -- handle graphic fade ins and fade outs

		if fade_state == "loading" then

			timer = timer + delta_time

			if timer >= 2 then
				timer = 0
				fade_state = "fade in"
			end

		end

		if fade_state == "fade out" then

			if alpha_level > 0 then
				alpha_level = alpha_level - (255*delta_time/.6)
			end

			if alpha_level <= 0 then
				alpha_level = 0
				game_state = next_state
				fade_state = "fade in"
				if game_state == "intro" then
					slate_wipe()
				end
			end

		end

		if fade_state == "slow fade out" then

			if alpha_level > 0 then
				alpha_level = alpha_level - (255*delta_time/4)
			end

			if alpha_level <= 0 then
				alpha_level = 0
				game_state = next_state
				fade_state = "fade in"
				if game_state == "intro" then
					slate_wipe()
				end
			end



		end

		if fade_state == "fade in" then

			if alpha_level < 255 then
				alpha_level = alpha_level + (255*delta_time)
			end

			if alpha_level > 255 then alpha_level = 255 end

		end

	end
	--
	do -- regulate music fade-ins and fade-outs

		if music_state == "loading" then
			if fade_state == "fade in" then music_state = "fade out" end
		end

		if music_state == "fade out" then

			if music_volume > 0 then
				music_volume = music_volume - (delta_time/1.75)
			end

			if music_volume <= 0 then
				music_volume = 0
				intro_music:stop()
				game_music:stop()
				lvl_cleared_music:stop()
				lose_music:stop()
				next_music:play()
				music_state = "fade in"

			end
		end

		if music_state == "slow fade out" then

			if music_volume > 0 then
				music_volume = music_volume - (delta_time/3)
			end

			if music_volume <= 0 then
				music_volume = 0
				intro_music:stop()
				game_music:stop()
				lvl_cleared_music:stop()
				lose_music:stop()
				next_music:play()
				music_state = "fade in"

			end
		end

		if music_state == "fade in" then

			if music_volume < 1 then
				music_volume = music_volume + (delta_time/1.75)
			end

			if music_volume > 1 then music_volume = 1 end


			if lose_music:isPlaying() and lose_music:tell() < 28 then
				lose_music:seek(28)
			end

		end

		intro_music:setVolume(music_volume)
		game_music:setVolume(music_volume)
		lvl_cleared_music:setVolume(music_volume)
		lose_music:setVolume(music_volume)

	end
	--
	do -- regulate the ghost selector and ghost goal current frame
		ghost.selection_animation_timer = ghost.selection_animation_timer + delta_time

		if ghost.selection_animation_timer >= .08 then
			ghost.selection_animation_timer = 0
			ghost.frame = ghost.frame + 1

			if ghost.frame == 5 then
				ghost.frame = 1
			end
		end

	end
	--

	if game_state == "intro" or game_state == "how to play" then

		score_scroller_x_var, score_scroller_y_var = scroller_machine("scores", score_scroller_x_var, (#score_scrolly * 10))
		credit_scroller_x_var, credit_scroller_y_var = scroller_machine("credits", credit_scroller_x_var, (#credits * 10))



	elseif game_state == "ready" then

		ready_sign_hourglass = ready_sign_hourglass + delta_time

		if ready_sign_hourglass >= 6.2 then
			ready_sign_flash = 0
			ready_sign_hourglass = 0
			game_state = "play"
			beep_counter = 0
		elseif ready_sign_hourglass >= 6.1 then
			ready_sign_flash = 1
		elseif ready_sign_hourglass >= 6 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 5.9 then
			ready_sign_flash = 1
		elseif ready_sign_hourglass >= 5.8 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 5.7 then
			ready_sign_flash = 1
		elseif ready_sign_hourglass >= 5.6 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 5.5 then
			ready_sign_flash = 1
			sfx.ready_beep_2:play()
		elseif ready_sign_hourglass >= 4.75 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 4 then
			ready_sign_flash = 1
			if beep_counter == 2 then
				sfx.ready_beep:play()
				beep_counter = 3
			end
		elseif ready_sign_hourglass >= 3.25 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 2.5 then
			ready_sign_flash = 1
			if beep_counter == 1 then
				sfx.ready_beep:play()
				beep_counter = 2
			end
		elseif ready_sign_hourglass >= 1.75 then
			ready_sign_flash = 0
		elseif ready_sign_hourglass >= 1.25 then
			ready_sign_flash = 1
			if beep_counter == 0 then
				sfx.ready_beep:play()
				beep_counter = 1
			end
		end

		if sfx.ready_beep:isPlaying() then
			if sfx.ready_beep:tell("seconds") >= .07 then
				sfx.ready_beep:stop()
			end
		end





	elseif game_state == "play" then

		do -- handle Ghost House Behavior


			if red_ghost.state == "initial" then
				red_ghost.direction = "left"
				red_ghost.state = "normal"
			end

			if blue_ghost.state == "initial" then
				if eaten_pellets >= 16 then
					blue_ghost.state = "exit"
					sfx.ghost_exit:play()
				end
			end

			if orange_ghost.state == "initial" then
				if eaten_pellets >= 32 then
					orange_ghost.state = "exit"
					sfx.ghost_exit:play()
				end
			end

			if pink_ghost.state == "initial" then
				if eaten_pellets >= 48 then
					pink_ghost.state = "exit"
					sfx.ghost_exit:play()
				end
			end



			do -- handle prison time

				if red_ghost.prison_time > 0 then red_ghost.prison_time = (red_ghost.prison_time - dt) end
				if red_ghost.prison_time < 0 then red_ghost.prison_time = 0 end
				if red_ghost.state == "prison" and red_ghost.prison_time == 0 then
					red_ghost.state = "exit"
					sfx.ghost_exit:play()
				end

				if blue_ghost.prison_time > 0 then blue_ghost.prison_time = (blue_ghost.prison_time - dt) end
				if blue_ghost.prison_time < 0 then blue_ghost.prison_time = 0 end
				if blue_ghost.state == "prison" and blue_ghost.prison_time == 0 then
					blue_ghost.state = "exit"
					sfx.ghost_exit:play()
				end

				if orange_ghost.prison_time > 0 then orange_ghost.prison_time = (orange_ghost.prison_time - dt) end
				if orange_ghost.prison_time < 0 then orange_ghost.prison_time = 0 end
				if orange_ghost.state == "prison" and orange_ghost.prison_time == 0 then
					orange_ghost.state = "exit"
					sfx.ghost_exit:play()
				end

				if pink_ghost.prison_time > 0 then pink_ghost.prison_time = (pink_ghost.prison_time - dt) end
				if pink_ghost.prison_time < 0 then pink_ghost.prison_time = 0 end
				if pink_ghost.state == "prison" and pink_ghost.prison_time == 0 then
					pink_ghost.state = "exit"
					sfx.ghost_exit:play()
				end

			end

			ghost.enter_exit_leftovers = ghost.enter_exit_leftovers + ((50*dt) - math.floor(50*dt))

			if red_ghost.state == "exit" then

				for i = 1, math.floor(50*dt) do

					if red_ghost.x > 280 then red_ghost.x = (red_ghost.x - 1) end
					if red_ghost.x < 280 then red_ghost.x = (red_ghost.x + 1) end
					if red_ghost.x == 280 then
						if red_ghost.y > 290 then red_ghost.y = (red_ghost.y -1) end
						if red_ghost.y < 290 then red_ghost.y = (red_ghost.y +1) end
					end

					if red_ghost.x == 280 and red_ghost.y == 290 then
						red_ghost.direction = "left"
						red_ghost.state = "normal"
						break
					end
				end
			end

			if blue_ghost.state == "exit" then

				for i = 1, math.floor(50*dt) do

					if blue_ghost.x > 280 then blue_ghost.x = (blue_ghost.x - 1) end
					if blue_ghost.x < 280 then blue_ghost.x = (blue_ghost.x + 1) end
					if blue_ghost.x == 280 then
						if blue_ghost.y > 290 then blue_ghost.y = (blue_ghost.y -1) end
						if blue_ghost.y < 290 then blue_ghost.y = (blue_ghost.y +1) end
					end

					if blue_ghost.x == 280 and blue_ghost.y == 290 then
						blue_ghost.direction = "left"
						blue_ghost.state = "normal"
						break
					end
				end
			end

			if orange_ghost.state == "exit" then

				for i = 1, math.floor(50*dt) do

					if orange_ghost.x > 280 then orange_ghost.x = (orange_ghost.x - 1) end
					if orange_ghost.x < 280 then orange_ghost.x = (orange_ghost.x + 1) end
					if orange_ghost.x == 280 then
						if orange_ghost.y > 290 then orange_ghost.y = (orange_ghost.y -1) end
						if orange_ghost.y < 290 then orange_ghost.y = (orange_ghost.y +1) end
					end

					if orange_ghost.x == 280 and orange_ghost.y == 290 then
						orange_ghost.direction = "left"
						orange_ghost.state = "normal"
						break
					end
				end
			end

			if pink_ghost.state == "exit" then

				for i = 1, math.floor(50*dt) do

					if pink_ghost.x > 280 then pink_ghost.x = (pink_ghost.x - 1) end
					if pink_ghost.x < 280 then pink_ghost.x = (pink_ghost.x + 1) end
					if pink_ghost.x == 280 then
						if pink_ghost.y > 290 then pink_ghost.y = (pink_ghost.y -1) end
						if pink_ghost.y < 290 then pink_ghost.y = (pink_ghost.y +1) end
					end

					if pink_ghost.x == 280 and pink_ghost.y == 290 then
						pink_ghost.direction = "left"
						pink_ghost.state = "normal"
						break
					end
				end
			end

			if red_ghost.state == "enter" then

				for i = 1, math.floor(50*dt) do

					if red_ghost.y > 350 then red_ghost.y = (red_ghost.y -1) end
					if red_ghost.y < 350 then red_ghost.y = (red_ghost.y +1) end
					if red_ghost.y == 350 then
						if red_ghost.x > 280 then red_ghost.x = (red_ghost.x - 1) end
						if red_ghost.x < 280 then red_ghost.x = (red_ghost.x + 1) end
					end

					if red_ghost.x == 280 and red_ghost.y == 350 then
						red_ghost.direction = "down"
						red_ghost.state = "prison"
						red_ghost.prison_time = ghost.max_prison_time
						break
					end
				end
			end

			if blue_ghost.state == "enter" then

				for i = 1, math.floor(50*dt) do

					if blue_ghost.y > 350 then blue_ghost.y = (blue_ghost.y -1) end
					if blue_ghost.y < 350 then blue_ghost.y = (blue_ghost.y +1) end
					if blue_ghost.y == 350 then
						if blue_ghost.x > 240 then blue_ghost.x = (blue_ghost.x - 1) end
						if blue_ghost.x < 240 then blue_ghost.x = (blue_ghost.x + 1) end
					end

					if blue_ghost.x == 240 and blue_ghost.y == 350 then
						blue_ghost.direction = "down"
						blue_ghost.state = "prison"
						blue_ghost.prison_time = ghost.max_prison_time
						break
					end
				end
			end

			if orange_ghost.state == "enter" then

				for i = 1, math.floor(50*dt) do

					if orange_ghost.y > 350 then orange_ghost.y = (orange_ghost.y -1) end
					if orange_ghost.y < 350 then orange_ghost.y = (orange_ghost.y +1) end
					if orange_ghost.y == 350 then
						if orange_ghost.x > 320 then orange_ghost.x = (orange_ghost.x - 1) end
						if orange_ghost.x < 320 then orange_ghost.x = (orange_ghost.x + 1) end
					end

					if orange_ghost.x == 320 and orange_ghost.y == 350 then
						orange_ghost.direction = "down"
						orange_ghost.state = "prison"
						orange_ghost.prison_time = ghost.max_prison_time
						break
					end
				end
			end

			if pink_ghost.state == "enter" then

				for i = 1, math.floor(50*dt) do

					if pink_ghost.y > 350 then pink_ghost.y = (pink_ghost.y -1) end
					if pink_ghost.y < 350 then pink_ghost.y = (pink_ghost.y +1) end
					if pink_ghost.y == 350 then
						if pink_ghost.x > 280 then pink_ghost.x = (pink_ghost.x - 1) end
						if pink_ghost.x < 280 then pink_ghost.x = (pink_ghost.x + 1) end
					end

					if pink_ghost.x == 280 and pink_ghost.y == 350 then
						pink_ghost.direction = "down"
						pink_ghost.state = "prison"
						pink_ghost.prison_time = ghost.max_prison_time
						break
					end
				end
			end

			do -- handle leftover distance for entering and exiting ghost house

				if ghost.enter_exit_leftovers >= 1 then

					ghost.enter_exit_leftovers = ghost.enter_exit_leftovers - 1

					if red_ghost.state == "exit" then
						if red_ghost.x > 280 then red_ghost.x = (red_ghost.x - 1) end
						if red_ghost.x < 280 then red_ghost.x = (red_ghost.x + 1) end
						if red_ghost.x == 280 then
							if red_ghost.y > 290 then red_ghost.y = (red_ghost.y -1) end
							if red_ghost.y < 290 then red_ghost.y = (red_ghost.y +1) end
						end

						if red_ghost.x == 280 and red_ghost.y == 290 then
							red_ghost.direction = "left"
							red_ghost.state = "normal"
						end
					end

					if blue_ghost.state == "exit" then

						if blue_ghost.x > 280 then blue_ghost.x = (blue_ghost.x - 1) end
						if blue_ghost.x < 280 then blue_ghost.x = (blue_ghost.x + 1) end
						if blue_ghost.x == 280 then
							if blue_ghost.y > 290 then blue_ghost.y = (blue_ghost.y -1) end
							if blue_ghost.y < 290 then blue_ghost.y = (blue_ghost.y +1) end
						end

						if blue_ghost.x == 280 and blue_ghost.y == 290 then
							blue_ghost.direction = "left"
							blue_ghost.state = "normal"
						end
					end

					if orange_ghost.state == "exit" then

						if orange_ghost.x > 280 then orange_ghost.x = (orange_ghost.x - 1) end
						if orange_ghost.x < 280 then orange_ghost.x = (orange_ghost.x + 1) end
						if orange_ghost.x == 280 then
							if orange_ghost.y > 290 then orange_ghost.y = (orange_ghost.y -1) end
							if orange_ghost.y < 290 then orange_ghost.y = (orange_ghost.y +1) end
						end

						if orange_ghost.x == 280 and orange_ghost.y == 290 then
							orange_ghost.direction = "left"
							orange_ghost.state = "normal"
						end
					end

					if pink_ghost.state == "exit" then

						if pink_ghost.x > 280 then pink_ghost.x = (pink_ghost.x - 1) end
						if pink_ghost.x < 280 then pink_ghost.x = (pink_ghost.x + 1) end
						if pink_ghost.x == 280 then
							if pink_ghost.y > 290 then pink_ghost.y = (pink_ghost.y -1) end
							if pink_ghost.y < 290 then pink_ghost.y = (pink_ghost.y +1) end
						end

						if pink_ghost.x == 280 and pink_ghost.y == 290 then
							pink_ghost.direction = "left"
							pink_ghost.state = "normal"
						end
					end

					if red_ghost.state == "enter" then

						if red_ghost.y > 350 then red_ghost.y = (red_ghost.y -1) end
						if red_ghost.y < 350 then red_ghost.y = (red_ghost.y +1) end
						if red_ghost.y == 350 then
							if red_ghost.x > 280 then red_ghost.x = (red_ghost.x - 1) end
							if red_ghost.x < 280 then red_ghost.x = (red_ghost.x + 1) end
						end

						if red_ghost.x == 280 and red_ghost.y == 350 then
							red_ghost.direction = "down"
							red_ghost.state = "prison"
							red_ghost.prison_time = ghost.max_prison_time
						end
					end

					if blue_ghost.state == "enter" then

						if blue_ghost.y > 350 then blue_ghost.y = (blue_ghost.y -1) end
						if blue_ghost.y < 350 then blue_ghost.y = (blue_ghost.y +1) end
						if blue_ghost.y == 350 then
							if blue_ghost.x > 240 then blue_ghost.x = (blue_ghost.x - 1) end
							if blue_ghost.x < 240 then blue_ghost.x = (blue_ghost.x + 1) end
						end

						if blue_ghost.x == 240 and blue_ghost.y == 350 then
							blue_ghost.direction = "down"
							blue_ghost.state = "prison"
							blue_ghost.prison_time = ghost.max_prison_time
						end
					end

					if orange_ghost.state == "enter" then

						if orange_ghost.y > 350 then orange_ghost.y = (orange_ghost.y -1) end
						if orange_ghost.y < 350 then orange_ghost.y = (orange_ghost.y +1) end
						if orange_ghost.y == 350 then
							if orange_ghost.x > 320 then orange_ghost.x = (orange_ghost.x - 1) end
							if orange_ghost.x < 320 then orange_ghost.x = (orange_ghost.x + 1) end
						end

						if orange_ghost.x == 320 and orange_ghost.y == 350 then
							orange_ghost.direction = "down"
							orange_ghost.state = "prison"
							orange_ghost.prison_time = ghost.max_prison_time
						end
					end

					if pink_ghost.state == "enter" then

						if pink_ghost.y > 350 then pink_ghost.y = (pink_ghost.y -1) end
						if pink_ghost.y < 350 then pink_ghost.y = (pink_ghost.y +1) end
						if pink_ghost.y == 350 then
							if pink_ghost.x > 280 then pink_ghost.x = (pink_ghost.x - 1) end
							if pink_ghost.x < 280 then pink_ghost.x = (pink_ghost.x + 1) end
						end

						if pink_ghost.x == 280 and pink_ghost.y == 350 then
							pink_ghost.direction = "down"
							pink_ghost.state = "prison"
							pink_ghost.prison_time = ghost.max_prison_time
						end
					end
				end

			end

		end
		--

		do -- regulate super namcap state
			if namcap.super > 0 then
				namcap.super = (namcap.super - dt)
			end

			if namcap.super < 0 then
				namcap.super = 0
			end
		end
		--
		do -- handle all movement and collision detection

			namcap.distance_to_travel = namcap.speed*dt
			ghost.distance_to_travel = ghost.speed*dt

			if namcap.distance_to_travel >= ghost.distance_to_travel then

				for i = 1, math.floor(ghost.distance_to_travel) do
					ghost_one_pixel_move()
					ghost.distance_to_travel = (ghost.distance_to_travel - 1)
					namcap_one_pixel_move()
					namcap.distance_to_travel = (namcap.distance_to_travel - 1)
					collision_detect()
				end

				if namcap.distance_to_travel >= 1 then
					for i = 1, math.floor(namcap.distance_to_travel) do
						namcap_one_pixel_move()
						namcap.distance_to_travel = (namcap.distance_to_travel - 1)
						collision_detect()
					end
				end

			else

				for i = 1, math.floor(namcap.distance_to_travel) do
					ghost_one_pixel_move()
					ghost.distance_to_travel = (ghost.distance_to_travel - 1)
					namcap_one_pixel_move()
					namcap.distance_to_travel = (namcap.distance_to_travel - 1)
					collision_detect()

				end

				if ghost.distance_to_travel >= 1 then
					for i = 1, math.floor(ghost.distance_to_travel) do
						ghost_one_pixel_move()
						ghost.distance_to_travel = (ghost.distance_to_travel - 1)
						collision_detect()
					end
				end

			end

			namcap.leftover_distance = (namcap.leftover_distance + namcap.distance_to_travel)
			ghost.leftover_distance = (ghost.leftover_distance + ghost.distance_to_travel)

			if namcap.leftover_distance >= 1 then
				namcap_one_pixel_move()
				namcap.leftover_distance = (namcap.leftover_distance - 1)
				collision_detect()
			end

			if ghost.leftover_distance >= 1 then
				ghost_one_pixel_move()
				ghost.leftover_distance = (ghost.leftover_distance - 1)
				collision_detect()
			end

		end
		--
		do -- regulate Namcap sprite's current frame
			namcap.animation_timer = namcap.animation_timer + delta_time

			if namcap.animation_timer >= .05 then
				namcap.animation_timer = 0
				namcap.frame = namcap.frame + 1

				if namcap.frame == 9 then
					namcap.frame = 1
				end
			end
		end
		--
		do -- rotate Namcap appropriately
			if namcap.direction == "right" then
				namcap.rotation_degree = 0
			end

			if namcap.direction == "down" then
				namcap.rotation_degree = 90
			end

			if namcap.direction == "left" then
				namcap.rotation_degree = 180
			end

			if namcap.direction == "up" then
				namcap.rotation_degree = 270
			end

		end
		--


	elseif game_state == "level cleared" then

		do -- regulate prison gate sprite's current frame

			namcap.capture_animation_timer = namcap.capture_animation_timer + delta_time

			if namcap.capture_animation_timer >= .05 then
				namcap.capture_animation_timer = 0
				namcap.prison_frame = namcap.prison_frame + 1

				if namcap.prison_frame == 9 then namcap.prison_frame = 8 end

			end
		end
		--
		do -- add score
			ready_sign_hourglass = ready_sign_hourglass + delta_time

			if ready_sign_hourglass >= .005 then
				ready_sign_hourglass = 0
				if possible_score > 0 then
					possible_score = possible_score - 1
					score = score + 1
				end
			end
		end

	elseif game_state == "reset" then

		if fade_state ~= "fade out" then

			do -- prepare the next level

				score = score + possible_score
				level = level + 1
				possible_score = (64 * level) + (3^level)

				namcap.speed = namcap.speed + 2

				local level_ramp = {}
				level_ramp[1] = 3
				level_ramp[2] = 6
				level_ramp[3] = 9
				level_ramp[4] = 12
				level_ramp[5] = 15
				level_ramp[6] = 18
				level_ramp[7] = 21
				level_ramp[8] = 24
				level_ramp[9] = 27
				level_ramp[10] = 30

				for o = 1, #level_ramp do
					if level == level_ramp[o] then
						namcap.speed = namcap.speed + 3
						ghost.speed = ghost.speed + 3
					end
				end

				for i = 1, 64 do
					node.pellet[i] = 1
				end

				for i = 1, 4 do
					super_pellet.available[i] = 1
				end

				namcap.animation_timer = 0
				namcap.capture_animation_timer = 0
				namcap.prison_frame = 1
				namcap.direction = "right"
				namcap.rotation_degree = 0
				namcap.x = 280
				namcap.y = 530
				namcap.leftover_distance = 0
				namcap.super = 0
				namcap.ai_pix_counter = 0
				namcap.goal_x = 0
				namcap.goal_y = 0
				namcap.pause_super = 0
				namcap.frame = 4

				ghost.selection_animation_timer = 0
				ghost.frame = 1
				ghost.leftover_distance = 0
				ghost.enter_exit_leftovers = 0
				ghost.selected = ""
				ghost.max_prison_time = 8
				red_ghost.x = 280
				red_ghost.y = 290
				red_ghost.direction = "left"
				red_ghost.state = "initial"
				red_ghost.goal_x = ""
				red_ghost.goal_y = ""
				red_ghost.prison_time = 0
				blue_ghost.x = 240
				blue_ghost.y = 350
				blue_ghost.direction = "up"
				blue_ghost.state = "initial"
				blue_ghost.goal_x = ""
				blue_ghost.goal_y = ""
				blue_ghost.prison_time = 0
				orange_ghost.x = 320
				orange_ghost.y = 350
				orange_ghost.direction = "up"
				orange_ghost.state = "initial"
				orange_ghost.goal_x = ""
				orange_ghost.goal_y = ""
				orange_ghost.prison_time = 0
				pink_ghost.x = 280
				pink_ghost.y = 350
				pink_ghost.direction = "down"
				pink_ghost.state = "initial"
				pink_ghost.goal_x = ""
				pink_ghost.goal_y = ""
				pink_ghost.prison_time = 0
				eaten_pellets = 0
				ready_sign_flash = 0
				ready_sign_hourglass = 0
				mouse_click_x = "N/A"
				mouse_click_y = "N/A"
				level_clear_timer = 0

				next_state = "ready"
				fade_state = "fade out"
			end

		end
		--


	elseif game_state == "lose" then

		if music_state == "fade in" then
			music_volume = .99
		end

		namcap.frame = 4

	elseif game_state == "submit score" then


	elseif game_state == "transfer to intro" then

		fade_state = "fade out"
		next_state = "intro"
		music_state = "fade out"
		next_music = intro_music

	end

end



function love.draw()

	love.graphics.setColor(255, 255, 255, alpha_level)

	if game_state == "intro" then

		if mouse_pos_x >= 608 and mouse_pos_x <= 878 and mouse_pos_y >= 540 and mouse_pos_y <= 606 then
			love.graphics.draw(intro_s)
		elseif mouse_pos_x >= 597 and mouse_pos_x <= 892 and mouse_pos_y >= 629 and mouse_pos_y <= 694 then
			love.graphics.draw(intro_h)
		else
			love.graphics.draw(intro)
		end

		love.graphics.print(score_scrolly, score_scroller_x_var, score_scroller_y_var)
		love.graphics.print(credits, credit_scroller_x_var, credit_scroller_y_var)


	elseif game_state == "how to play" then

		if mouse_pos_x >= 478 and mouse_pos_x <= 554 and mouse_pos_y >= 686 and mouse_pos_y <= 725 then
			love.graphics.draw(how_to_play_b)
		else
			love.graphics.draw(how_to_play)
		end

		do -- draw example pellets

			local loci = {}
			loci.x = {}
			loci.y = {}
			loci.x[7] = 530
			loci.y[7] = 90
			loci.x[2] = 570
			loci.y[2] = 90
			loci.x[9] = 610
			loci.y[9] = 90
			loci.x[4] = 650
			loci.y[4] = 90
			loci.x[5] = 690
			loci.y[5] = 90
			loci.x[6] = 730
			loci.y[6] = 90
			loci.x[1] = 770
			loci.y[1] = 90
			loci.x[8] = 810
			loci.y[8] = 90
			loci.x[3] = 850
			loci.y[3] = 90

			love.graphics.draw(marker, loci.x[1], loci.y[1])
			love.graphics.draw(s_marker, (loci.x[1] + 10), loci.y[1])
			love.graphics.draw(s_marker, (loci.x[1] - 10), loci.y[1])
			love.graphics.draw(s_marker, loci.x[1], (loci.y[1] + 10))
			love.graphics.draw(s_marker, loci.x[1], (loci.y[1] - 10))

			love.graphics.draw(marker, loci.x[2], loci.y[2])
			love.graphics.draw(s_marker, (loci.x[2] + 10), loci.y[2])
			love.graphics.draw(s_marker, (loci.x[2] - 10), loci.y[2])
			love.graphics.draw(s_marker, loci.x[2], (loci.y[2] - 10))

			love.graphics.draw(marker, loci.x[3], loci.y[3])
			love.graphics.draw(s_marker, (loci.x[3] + 10), loci.y[3])
			love.graphics.draw(s_marker, (loci.x[3] - 10), loci.y[3])
			love.graphics.draw(s_marker, loci.x[3], (loci.y[3] + 10))

			love.graphics.draw(marker, loci.x[4], loci.y[4])
			love.graphics.draw(s_marker, (loci.x[4] + 10), loci.y[4])
			love.graphics.draw(s_marker, loci.x[4], (loci.y[4] + 10))
			love.graphics.draw(s_marker, loci.x[4], (loci.y[4] - 10))

			love.graphics.draw(marker, loci.x[5], loci.y[5])
			love.graphics.draw(s_marker, (loci.x[5] - 10), loci.y[5])
			love.graphics.draw(s_marker, loci.x[5], (loci.y[5] + 10))
			love.graphics.draw(s_marker, loci.x[5], (loci.y[5] - 10))

			love.graphics.draw(marker, loci.x[6], loci.y[6])
			love.graphics.draw(marker, (loci.x[6] - 10), loci.y[6])
			love.graphics.draw(marker, loci.x[6], (loci.y[6] - 10))

			love.graphics.draw(marker, loci.x[7], loci.y[7])
			love.graphics.draw(marker, (loci.x[7] - 10), loci.y[7])
			love.graphics.draw(marker, loci.x[7], (loci.y[7] + 10))

			love.graphics.draw(marker, loci.x[8], loci.y[8])
			love.graphics.draw(marker, (loci.x[8] + 10), loci.y[8])
			love.graphics.draw(marker, loci.x[8], (loci.y[8] - 10))

			love.graphics.draw(marker, loci.x[9], loci.y[9])
			love.graphics.draw(marker, (loci.x[9] + 10), loci.y[9])
			love.graphics.draw(marker, loci.x[9], (loci.y[9] + 10))

		end
		--
		do -- draw ghost, ghost selection, and ghost goal examples

			love.graphics.draw(red_ghost.sprite, ghost.left_quad, 100, 350, 0, 1, 1, 16, 16)
			love.graphics.draw(blue_ghost.sprite, ghost.down_quad, 175, 350, 0, 1, 1, 16, 16)
			love.graphics.draw(orange_ghost.sprite, ghost.up_quad, 250, 350, 0, 1, 1, 16, 16)
			love.graphics.draw(pink_ghost.sprite, ghost.right_quad, 430, 350, 0, 1, 1, 16, 16)
			love.graphics.draw(ghost.selected_border_sprite, ghost.selected_border_quads[ghost.frame], 430, 350, 0, 1, 1, 16, 16)
			love.graphics.draw(ghost.pink_goal_border_sprite, ghost.goal_border_quads[ghost.frame], 600, 350, 0, 1, 1, 16, 16)


		end
		--
		do -- draw super pellet examples

			love.graphics.draw(namcap.sprite, namcap.quads[4], 555, 550, math.rad(0), 1, 1, 16, 16)
			love.graphics.draw(s_pellet, 570, 550)
			love.graphics.draw(red_ghost.sprite, ghost.left_quad, 610, 550, 0, 1, 1, 16, 16)


			love.graphics.draw(namcap.sprite, namcap.quads[5], 720, 550, math.rad(0), 1, 1, 16, 16)
			love.graphics.draw(scared_ghost_sprite, 745, 550, 0, 1, 1, 16, 16)


			love.graphics.draw(namcap.sprite, namcap.quads[6], 900, 550, math.rad(0), 1, 1, 16, 16)
			love.graphics.draw(dead_ghost_sprite, ghost.left_quad, 865, 550, 0, 1, 1, 16, 16)


--[[

			if namcap.frame == 1 then




			elseif namcap.frame == 2 then

				love.graphics.draw(namcap.sprite, namcap.quads[5], 605, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(s_pellet, 600, 550)
				love.graphics.draw(red_ghost.sprite, ghost.left_quad, 635, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 3 then
				love.graphics.draw(namcap.sprite, namcap.quads[6], 610, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(scared_ghost_sprite, 630, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 4 then
				love.graphics.draw(namcap.sprite, namcap.quads[7], 615, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(scared_ghost_sprite, 625, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 5 then
				love.graphics.draw(namcap.sprite, namcap.quads[8], 620, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(dead_ghost_sprite, ghost.left_quad, 620, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 6 then

				love.graphics.draw(namcap.sprite, namcap.quads[1], 625, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(dead_ghost_sprite, ghost.left_quad, 615, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 7 then

				love.graphics.draw(namcap.sprite, namcap.quads[2], 630, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(dead_ghost_sprite, ghost.left_quad, 610, 550, 0, 1, 1, 16, 16)

			elseif namcap.frame == 8 then

				love.graphics.draw(namcap.sprite, namcap.quads[3], 635, 550, math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(dead_ghost_sprite, ghost.left_quad, 605, 550, 0, 1, 1, 16, 16)


			end ]]




		end
		--

	elseif game_state == "submit score" or game_state == "transfer to intro" then

		love.graphics.draw(submit_score_sign, 262, 134)
		love.graphics.print(save_name .. "|", 393, 410)


	else

		do -- draw map
			love.graphics.draw(map, 232, 24)
		end
		--
		do -- draw node placemarkers

			for i = 1, #node.x do

				if node.pellet[i] == 1 then

					love.graphics.draw(marker, (node.x[i] + 232), (node.y[i] + 24))

					if node.type[i] == "c" then
						love.graphics.draw(s_marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "tu" then
						love.graphics.draw(s_marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "td" then
						love.graphics.draw(s_marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
					end

					if node.type[i] == "tr" then
						love.graphics.draw(s_marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "tl" then
						love.graphics.draw(s_marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
						love.graphics.draw(s_marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "lu" then
						love.graphics.draw(marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "ld" then
						love.graphics.draw(marker, (node.x[i] + 232 - 10), (node.y[i] + 24))
						love.graphics.draw(marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
					end

					if node.type[i] == "ru" then
						love.graphics.draw(marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(marker, (node.x[i] + 232), (node.y[i] + 24 - 10))
					end

					if node.type[i] == "rd" then
						love.graphics.draw(marker, (node.x[i] + 232 + 10), (node.y[i] + 24))
						love.graphics.draw(marker, (node.x[i] + 232), (node.y[i] + 24 + 10))
					end
				end
			end
		end
		--
		do -- draw super pellets
			for i = 1, 4 do
				if super_pellet.available[i] == 1 then
					love.graphics.draw(s_pellet, super_pellet.x[i], super_pellet.y[i])
				end
			end
		end
		--
		do -- draw Nampac normally
			if game_state ~= "level cleared" then
				love.graphics.draw(namcap.sprite, namcap.quads[namcap.frame], (namcap.x + 232), (namcap.y + 24), math.rad(namcap.rotation_degree), 1, 1, 16, 16)
			end
		end
		--
		do -- draw ghosts

			if namcap.super <= 0 then

				if red_ghost.state ~= "dead" and red_ghost.state ~= "enter" then
					if red_ghost.direction == "up" then
						love.graphics.draw(red_ghost.sprite, ghost.up_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "right" then
						love.graphics.draw(red_ghost.sprite, ghost.right_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "down" then
						love.graphics.draw(red_ghost.sprite, ghost.down_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "left" then
						love.graphics.draw(red_ghost.sprite, ghost.left_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				elseif red_ghost.state == "dead" or red_ghost.state == "enter" then
					if red_ghost.direction == "up" then
						love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "right" then
						love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "down" then
						love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif red_ghost.direction == "left" then
						love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				end

				if blue_ghost.state ~= "dead" and blue_ghost.state ~= "enter" then
					if blue_ghost.direction == "up" then
						love.graphics.draw(blue_ghost.sprite, ghost.up_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "right" then
						love.graphics.draw(blue_ghost.sprite, ghost.right_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "down" then
						love.graphics.draw(blue_ghost.sprite, ghost.down_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "left" then
						love.graphics.draw(blue_ghost.sprite, ghost.left_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				elseif blue_ghost.state == "dead"  or blue_ghost.state == "enter" then
					if blue_ghost.direction == "up" then
						love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "right" then
						love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "down" then
						love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif blue_ghost.direction == "left" then
						love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				end

				if orange_ghost.state ~= "dead" and orange_ghost.state ~= "enter" then
					if orange_ghost.direction == "up" then
						love.graphics.draw(orange_ghost.sprite, ghost.up_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "right" then
						love.graphics.draw(orange_ghost.sprite, ghost.right_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "down" then
						love.graphics.draw(orange_ghost.sprite, ghost.down_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "left" then
						love.graphics.draw(orange_ghost.sprite, ghost.left_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				elseif orange_ghost.state == "dead"  or orange_ghost.state == "enter" then
					if orange_ghost.direction == "up" then
						love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "right" then
						love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "down" then
						love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif orange_ghost.direction == "left" then
						love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				end

				if pink_ghost.state ~= "dead" and pink_ghost.state ~= "enter" then
					if pink_ghost.direction == "up" then
						love.graphics.draw(pink_ghost.sprite, ghost.up_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "right" then
						love.graphics.draw(pink_ghost.sprite, ghost.right_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "down" then
						love.graphics.draw(pink_ghost.sprite, ghost.down_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "left" then
						love.graphics.draw(pink_ghost.sprite, ghost.left_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				elseif pink_ghost.state == "dead"  or pink_ghost.state == "enter" then
					if pink_ghost.direction == "up" then
						love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "right" then
						love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "down" then
						love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					elseif pink_ghost.direction == "left" then
						love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
					end
				end

			elseif namcap.super > 0 then

				if red_ghost.state == "normal" then
					love.graphics.draw(scared_ghost_sprite, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
				else
					if red_ghost.state ~= "dead" and red_ghost.state ~= "enter" then
						if red_ghost.direction == "up" then
							love.graphics.draw(red_ghost.sprite, ghost.up_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "right" then
							love.graphics.draw(red_ghost.sprite, ghost.right_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "down" then
							love.graphics.draw(red_ghost.sprite, ghost.down_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "left" then
							love.graphics.draw(red_ghost.sprite, ghost.left_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					elseif red_ghost.state == "dead"  or red_ghost.state == "enter" then
						if red_ghost.direction == "up" then
							love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "right" then
							love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "down" then
							love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif red_ghost.direction == "left" then
							love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					end
				end

				if blue_ghost.state == "normal" then
					love.graphics.draw(scared_ghost_sprite, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
				else
					if blue_ghost.state ~= "dead" and blue_ghost.state ~= "enter" then
						if blue_ghost.direction == "up" then
							love.graphics.draw(blue_ghost.sprite, ghost.up_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "right" then
							love.graphics.draw(blue_ghost.sprite, ghost.right_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "down" then
							love.graphics.draw(blue_ghost.sprite, ghost.down_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "left" then
							love.graphics.draw(blue_ghost.sprite, ghost.left_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					elseif blue_ghost.state == "dead" or blue_ghost.state == "enter" then
						if blue_ghost.direction == "up" then
							love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "right" then
							love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "down" then
							love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif blue_ghost.direction == "left" then
							love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					end
				end

				if orange_ghost.state == "normal" then
					love.graphics.draw(scared_ghost_sprite, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
				else
					if orange_ghost.state ~= "dead" and orange_ghost.state ~= "enter" then
						if orange_ghost.direction == "up" then
							love.graphics.draw(orange_ghost.sprite, ghost.up_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "right" then
							love.graphics.draw(orange_ghost.sprite, ghost.right_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "down" then
							love.graphics.draw(orange_ghost.sprite, ghost.down_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "left" then
							love.graphics.draw(orange_ghost.sprite, ghost.left_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					elseif orange_ghost.state == "dead" or orange_ghost.state == "enter" then
						if orange_ghost.direction == "up" then
							love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "right" then
							love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "down" then
							love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif orange_ghost.direction == "left" then
							love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					end
				end

				if pink_ghost.state == "normal" then
					love.graphics.draw(scared_ghost_sprite, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
				else
					if pink_ghost.state ~= "dead" and pink_ghost.state ~= "enter" then
						if pink_ghost.direction == "up" then
							love.graphics.draw(pink_ghost.sprite, ghost.up_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "right" then
							love.graphics.draw(pink_ghost.sprite, ghost.right_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "down" then
							love.graphics.draw(pink_ghost.sprite, ghost.down_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "left" then
							love.graphics.draw(pink_ghost.sprite, ghost.left_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					elseif pink_ghost.state == "dead" or pink_ghost.state == "enter" then
						if pink_ghost.direction == "up" then
							love.graphics.draw(dead_ghost_sprite, ghost.up_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "right" then
							love.graphics.draw(dead_ghost_sprite, ghost.right_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "down" then
							love.graphics.draw(dead_ghost_sprite, ghost.down_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						elseif pink_ghost.direction == "left" then
							love.graphics.draw(dead_ghost_sprite, ghost.left_quad, (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
						end
					end
				end
			end
		end
		--
		do -- draw ghost selector border
			if ghost.selected == "red" then
				love.graphics.draw(ghost.selected_border_sprite, ghost.selected_border_quads[ghost.frame], (red_ghost.x + 232), (red_ghost.y + 24), 0, 1, 1, 16, 16)
			elseif ghost.selected == "blue" then
				love.graphics.draw(ghost.selected_border_sprite, ghost.selected_border_quads[ghost.frame], (blue_ghost.x + 232), (blue_ghost.y + 24), 0, 1, 1, 16, 16)
			elseif ghost.selected == "orange" then
				love.graphics.draw(ghost.selected_border_sprite, ghost.selected_border_quads[ghost.frame], (orange_ghost.x + 232), (orange_ghost.y + 24), 0, 1, 1, 16, 16)
			elseif ghost.selected == "pink" then
				love.graphics.draw(ghost.selected_border_sprite, ghost.selected_border_quads[ghost.frame], (pink_ghost.x + 232), (pink_ghost.y + 24), 0, 1, 1, 16, 16)
			end
		end
		--
		do -- draw ghost goals

			if red_ghost.goal_x ~= "" and red_ghost.goal_y ~= "" and red_ghost.state == "normal" then
				love.graphics.draw(ghost.red_goal_border_sprite, ghost.goal_border_quads[ghost.frame], (red_ghost.goal_x), (red_ghost.goal_y), 0, 1, 1, 16, 16)
			end

			if blue_ghost.goal_x ~= "" and blue_ghost.goal_y ~= "" and blue_ghost.state == "normal" then
				love.graphics.draw(ghost.blue_goal_border_sprite, ghost.goal_border_quads[ghost.frame], (blue_ghost.goal_x), (blue_ghost.goal_y), 0, 1, 1, 16, 16)
			end

			if orange_ghost.goal_x ~= "" and orange_ghost.goal_y ~= "" and orange_ghost.state == "normal" then
				love.graphics.draw(ghost.orange_goal_border_sprite, ghost.goal_border_quads[ghost.frame], (orange_ghost.goal_x), (orange_ghost.goal_y), 0, 1, 1, 16, 16)
			end

			if pink_ghost.goal_x ~= "" and pink_ghost.goal_y ~= "" and pink_ghost.state == "normal" then
				love.graphics.draw(ghost.pink_goal_border_sprite, ghost.goal_border_quads[ghost.frame], (pink_ghost.goal_x), (pink_ghost.goal_y), 0, 1, 1, 16, 16)
			end
		end
		--
		do -- draw captured namcap

			if game_state == "level cleared" then
				love.graphics.draw(namcap.sprite, namcap.quads[4], (namcap.x + 232), (namcap.y + 24), math.rad(0), 1, 1, 16, 16)
				love.graphics.draw(namcap.prison, namcap.quads[namcap.prison_frame], (namcap.x + 232), (namcap.y + 24), 0, 1, 1, 16, 16)
			end

		end
		--
		do -- print score and level to screen
		love.graphics.print("Level: " .. level, 235, 32)
		love.graphics.print("Score: " .. score, 510, 32)
		love.graphics.print("+ " .. possible_score, ((string.len("Score: " .. score) * 10) + 20 + 510), 32)
		end
		--
		do -- print debugging stats

			--[[

			love.graphics.print("ghost.selected = " .. ghost.selected, 0, 0)
			love.graphics.print("mouse X = " .. mouse_click_x, 0, 20)
			love.graphics.print("mouse Y = " .. mouse_click_y, 0, 40)
			love.graphics.print("red_ghost.goal_x = " .. red_ghost.goal_x, 0, 60)
			love.graphics.print("red_ghost.goal_y = " .. red_ghost.goal_y, 0, 80)
			love.graphics.print("pink ghost x = " .. pink_ghost.x, 0, 100)
			love.graphics.print("pink ghost y = " .. pink_ghost.y, 0, 120)
			love.graphics.print("press 'f' to go faster, press 's' to slow down", 0, 140)
			love.graphics.print("namcap.super = " .. namcap.super, 0, 160)
			love.graphics.print("red_ghost.state = " .. red_ghost.state, 0, 180)
			love.graphics.print("blue_ghost.state = " .. blue_ghost.state, 0, 200)
			love.graphics.print("orange_ghost.state = " .. orange_ghost.state, 0, 220)
			love.graphics.print("pink_ghost.state = " .. pink_ghost.state, 0, 240)
			love.graphics.print("up_value: " .. up_value, 0, 280)
			love.graphics.print("right_value: " .. right_value, 0, 300)
			love.graphics.print("down_value: " .. down_value, 0, 320)
			love.graphics.print("left_value: " .. left_value, 0, 340)

			-- x = 800 for the other side of the map

			if p_count ~= nil then
				love.graphics.print("pellet value count: " .. math.ceil(p_count), 800, 20)
			end

			if g_count ~= nil then
				love.graphics.print("ghost value count: " .. math.ceil(g_count.total), 800, 40)
			end

			if modifier ~= nil then
				love.graphics.print("ghost value to pellet value", 800, 60)
				love.graphics.print("ratio (ghost) modifier: " .. modifier, 800, 80)
			end

			if threat_level ~= nil then
				love.graphics.print("threat level : " .. threat_level, 800, 100)
			end

			if emergency_value ~= nil then
				love.graphics.print("emergency_value.up : " .. emergency_value.up, 800, 120)
				love.graphics.print("emergency_value.right : " .. emergency_value.right, 800, 140)
				love.graphics.print("emergency_value.down : " .. emergency_value.down, 800, 160)
				love.graphics.print("emergency_value.left : " .. emergency_value.left, 800, 180)
			end


			love.graphics.print("Why was AI called? " .. reason, 800, 0)


			love.graphics.setFont(small_font)
			for i = 1, #value_text.x do

				-- value_text.type possibilities: U, R, D, L for directions
				--								  G, S, P for ghosts, superpellets, and pellets

				if value_text.type[i] == "UG" then
					love.graphics.setColor( 255, 180, 180, 255 )
					love.graphics.print("UG: " .. value_text.v[i], (value_text.x[i] + 232 - 16), (value_text.y[i] + 24 - 50))

				elseif value_text.type[i] == "RG" then
				love.graphics.setColor( 255, 180, 180, 255 )
				love.graphics.print("RG: " .. value_text.v[i], (value_text.x[i] + 232 - 16), (value_text.y[i] + 24 - 40))

				elseif value_text.type[i] == "DG" then
				love.graphics.setColor( 255, 180, 180, 255 )
				love.graphics.print("DG: " .. value_text.v[i], (value_text.x[i] + 232 - 16), (value_text.y[i] + 24 - 30))

				elseif value_text.type[i] == "LG" then
				love.graphics.setColor( 255, 180, 180, 255 )
				love.graphics.print("LG: " .. value_text.v[i], (value_text.x[i] + 232 - 16), (value_text.y[i] + 24 - 20))

				elseif value_text.type[i] == "US" then
				love.graphics.setColor( 180, 255, 180, 255 )
				love.graphics.print("US: " .. value_text.v[i], (value_text.x[i]), (value_text.y[i] - 50))

				elseif value_text.type[i] == "RS" then
				love.graphics.setColor( 180, 255, 180, 255 )
				love.graphics.print("RS: " .. value_text.v[i], (value_text.x[i]), (value_text.y[i] - 40))

				elseif value_text.type[i] == "DS" then
				love.graphics.setColor( 180, 255, 180, 255 )
				love.graphics.print("DS: " .. value_text.v[i], (value_text.x[i]), (value_text.y[i] - 30))

				elseif value_text.type[i] == "LS" then
				love.graphics.setColor( 180, 255, 180, 255 )
				love.graphics.print("LS: " .. value_text.v[i], (value_text.x[i]), (value_text.y[i] - 20))

				elseif value_text.type[i] == "UP" then
				love.graphics.setColor( 180, 180, 255, 255 )
				love.graphics.print("UP: " .. value_text.v[i], (value_text.x[i] + 232 - 10), (value_text.y[i] + 24 - 40))

				elseif value_text.type[i] == "RP" then
				love.graphics.setColor( 180, 180, 255, 255 )
				love.graphics.print("RP: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 30))

				elseif value_text.type[i] == "DP" then
				love.graphics.setColor( 180, 180, 255, 255 )
				love.graphics.print("DP: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 20))

				elseif value_text.type[i] == "LP" then
				love.graphics.setColor( 180, 180, 255, 255 )
				love.graphics.print("LP: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 10))

				elseif value_text.type[i] == "UL" then
				love.graphics.setColor( 255, 255, 180, 255 )
				love.graphics.print("UL: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 40))

				elseif value_text.type[i] == "RL" then
				love.graphics.setColor( 255, 255, 180, 255 )
				love.graphics.print("RL: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 30))

				elseif value_text.type[i] == "DL" then
				love.graphics.setColor( 255, 255, 180, 255 )
				love.graphics.print("DL: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 20))

				elseif value_text.type[i] == "LL" then
				love.graphics.setColor( 255, 255, 180, 255 )
				love.graphics.print("LL: " .. value_text.v[i], (value_text.x[i] + 232 - 10 ), (value_text.y[i] + 24 - 10))

				end

			end
			love.graphics.setColor( 255, 255, 255, 255 )
			love.graphics.setFont(font)


			love.graphics.setColor( 255, 255, 255, 80)

			if choice_node.up_x ~= nil and choice_node.up_y ~= nil then
				love.graphics.circle("line", (choice_node.up_x + 232), (choice_node.up_y + 24), 10, 20 )
				love.graphics.print("up", (choice_node.up_x + 232), (choice_node.up_y + 24))
			end

			if choice_node.right_x ~= nil and choice_node.right_y ~= nil then
				love.graphics.circle("line", (choice_node.right_x + 232), (choice_node.right_y + 24), 10, 20 )
				love.graphics.print("right", (choice_node.right_x + 232), (choice_node.right_y + 24))
			end

			if choice_node.down_x ~= nil and choice_node.down_y ~= nil then
				love.graphics.circle("line", (choice_node.down_x + 232), (choice_node.down_y + 24), 10, 20 )
				love.graphics.print("down", (choice_node.down_x + 232), (choice_node.down_y + 24))
			end

			if choice_node.left_x ~= nil and choice_node.left_y ~= nil then
				love.graphics.circle("line", (choice_node.left_x + 232), (choice_node.left_y + 24), 10, 20 )
				love.graphics.print("left", (choice_node.left_x + 232), (choice_node.left_y + 24))
			end

			love.graphics.setColor( 255, 255, 255, 255 )

			love.graphics.setFont(small_font)
			love.graphics.print("dt = " .. delta_time, 500, 500)
			love.graphics.print("(ghost.speed - 10)*dt = " .. (delta_time*(ghost.speed - 10)), 500, 520)
			love.graphics.print("math.ceil((ghost.speed - 10)*dt) = " .. (math.ceil((ghost.speed - 10)*delta_time)), 500, 540)
			love.graphics.print("math.floor((ghost.speed - 10)*dt) = " .. (math.floor((ghost.speed - 10)*delta_time)), 500, 560)
			love.graphics.setFont(font) ]]

		end
		--

		if ready_sign_flash == 1 then
			love.graphics.draw(ready_sign, (222 + 232), (400+ 24))
		end

		if game_state == "level cleared" then
			if mouse_pos_x >= (222 + 232) and mouse_pos_x <= (222 + 232 + 120) and mouse_pos_y >= (400+ 24) and mouse_pos_y <= (400+ 24 + 24) then
				love.graphics.draw(next_lvl_sign_g, (222 + 232), (400+ 24))
			else
				love.graphics.draw(next_lvl_sign, (222 + 232), (400+ 24))
			end
		end

		if game_state == "lose" then
			if mouse_pos_x >= (222 + 232) and mouse_pos_x <= (222 + 232 + 120) and mouse_pos_y >= (400+ 24) and mouse_pos_y <= (400+ 24 + 24) then
				love.graphics.draw(continue_button_g, (222 + 232), (400+ 24))
			else
				love.graphics.draw(continue_button, (222 + 232), (400+ 24))
			end
		end

	end

end




function love.keypressed(key)


	do -- handle escape
		if key == "escape" then
			love.event.quit()
		end
	end



	if game_state == "intro" then



	elseif game_state == "submit score" then

		if string.len(key) == 1 then
			if font:getWidth(save_name .. key) <= 245 then
				save_name = save_name .. key
				save_name = string.upper(save_name)
			end
		end

		if key == "backspace" then
			save_name = string.sub(save_name, 1, (string.len(save_name) - 1))
		end

		if key == "return" then

			table.insert(high_scores.names, save_slot, save_name)
			table.insert(high_scores.scores, save_slot, score)
			table.remove(high_scores.names)
			table.remove(high_scores.scores)


			love.filesystem.write("save_data.txt", "")

			for i = 1, 3 do
				love.filesystem.append("save_data.txt", high_scores.names[i] .. "\r\n")
			end

			for i = 1, 3 do
				love.filesystem.append("save_data.txt", high_scores.scores[i] .. "\r\n")
			end

			do -- create score scrolly

				score_scrolly = " "

				for i = 1, 3 do
					if high_scores.names[i] == "nil" then
						break
					else

						if i == 1 then
							score_scrolly = score_scrolly .. "1st Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
						elseif i == 2 then
							score_scrolly = score_scrolly .. "2nd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
						elseif i == 3 then
							score_scrolly = score_scrolly .. "3rd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
						end
					end
				end

			end
			--

			game_state = "transfer to intro"

		end

	else


		if game_state == "play" then

			if key == "q" then
				if red_ghost.state == "normal" then
					ghost.selected = "red"
				end
			elseif key == "w" then
				if blue_ghost.state == "normal" then
					ghost.selected = "blue"
				end
			elseif key == "e" then
				if orange_ghost.state == "normal" then
					ghost.selected = "orange"
				end
			elseif key == "r" then
				if pink_ghost.state == "normal" then
					ghost.selected = "pink"
				end
			end
		end

--[[

		if key == "f" then
			namcap.speed = namcap.speed + 5
		end

		if key == "s" then
			namcap.speed = namcap.speed - 5
		end

		if key == "p" then
			if namcap.speed >= 1 then
				namcap.speed = 0
				namcap.pause_super = namcap.super
			elseif namcap.speed <= 0 then
				namcap.speed = 80
				namcap.super = namcap.pause_super
			end

			if ghost.speed >= 1 then
				ghost.speed = 0
			elseif ghost.speed <= 0 then
				ghost.speed = 60
			end

		end
		]]


	end

end




function love.mousereleased(x, y, button)

	mouse_click_x = x
	mouse_click_y = y




	if game_state == "intro" then

		if mouse_click_x >= 608 and mouse_click_x <= 878 and mouse_click_y >= 540 and mouse_click_y <= 606 then
			fade_state = "fade out"
			next_state = "ready"
			music_state = "fade out"
			next_music = game_music
		elseif mouse_click_x >= 597 and mouse_click_x <= 892 and mouse_click_y >= 629 and mouse_click_y <= 694 then
			fade_state = "fade out"
			next_state = "how to play"
		end



	elseif game_state == "how to play" then

		if mouse_click_x >= 478 and mouse_click_x <= 554 and mouse_click_y >= 686 and mouse_click_y <= 725 then
			fade_state = "fade out"
			next_state = "intro"
		end


	elseif game_state == "play" then

		local ghost_selected_trigger = 0

		if button == "l" then

			if pink_ghost.state == "normal" then
				if x <= (pink_ghost.x + 35 + 232) and x >= (pink_ghost.x - 35 + 232) then
					if y <= (pink_ghost.y + 35 + 24) and y >= (pink_ghost.y - 35 + 24) then
						ghost.selected = "pink"
						ghost_selected_trigger = 1
					end
				end
			end

			if orange_ghost.state == "normal" then
				if x <= (orange_ghost.x + 35 + 232) and x >= (orange_ghost.x - 35 + 232) then
					if y <= (orange_ghost.y + 35 + 24) and y >= (orange_ghost.y - 35 + 24) then
						ghost.selected = "orange"
						ghost_selected_trigger = 1
					end
				end
			end


			if blue_ghost.state == "normal" then
				if x <= (blue_ghost.x + 35 + 232) and x >= (blue_ghost.x - 35 + 232) then
					if y <= (blue_ghost.y + 35 + 24) and y >= (blue_ghost.y - 35 + 24) then
						ghost.selected = "blue"
						ghost_selected_trigger = 1
					end
				end
			end

			if red_ghost.state == "normal" then
				if x <= (red_ghost.x + 35 + 232) and x >= (red_ghost.x - 35 + 232) then
					if y <= (red_ghost.y + 35 + 24) and y >= (red_ghost.y - 35 + 24) then
						ghost.selected = "red"
						ghost_selected_trigger = 1
					end
				end
			end

			if ghost_selected_trigger ~= 1 then
				ghost.selected = ""
			end
		end
		--
		if button == "r" then

		-- to save computing time and energy, should probably make sure there is a selected ghost before going through all this...

			for a = 0, 350 do

				-- lock onto nodes first
				if a == 0 then
					for b = 1, 64 do
						if y >= (node.y[b] - 20 + 24) and y <= (node.y[b] + 20 + 24) and x >= (node.x[b] - 20 + 232) and x <= (node.x[b] + 20 + 232) then

							if ghost.selected == "red" then
								red_ghost.goal_x = (node.x[b] + 232)
								red_ghost.goal_y = (node.y[b] + 24)
							elseif ghost.selected == "blue" then
								blue_ghost.goal_x = (node.x[b] + 232)
								blue_ghost.goal_y = (node.y[b] + 24)
							elseif ghost.selected == "orange" then
								orange_ghost.goal_x = (node.x[b] + 232)
								orange_ghost.goal_y = (node.y[b] + 24)
							elseif ghost.selected == "pink" then
								pink_ghost.goal_x = (node.x[b] + 232)
								pink_ghost.goal_y = (node.y[b] + 24)
							end

							goal_locus_refined = 1
							break

						end
					end
				end


				if goal_locus_refined == 1 then
					goal_locus_refined = 0
					break
				end



				for i = 1, 24 do

					do -- check cardinal directions

					if horizontal_path.y[i] ~= nil and horizontal_path.x1[i] ~= nil and horizontal_path.x2[i] ~= nil then

							if y == (horizontal_path.y[i] + a + 24) and x >= (horizontal_path.x1[i] + 232) and x <= (horizontal_path.x2[i] + 232) then

								if ghost.selected == "red" then
									red_ghost.goal_x = x
									red_ghost.goal_y = y - a
								elseif ghost.selected == "blue" then
									blue_ghost.goal_x = x
									blue_ghost.goal_y = y - a
								elseif ghost.selected == "orange" then
									orange_ghost.goal_x = x
									orange_ghost.goal_y = y - a
								elseif ghost.selected == "pink" then
									pink_ghost.goal_x = x
									pink_ghost.goal_y = y - a
								end

								goal_locus_refined = 1
								break

							end

							if a ~= 0 then
								if y == (horizontal_path.y[i] - a + 24) and x >= (horizontal_path.x1[i] + 232) and x <= (horizontal_path.x2[i] + 232) then

									if ghost.selected == "red" then
										red_ghost.goal_x = x
										red_ghost.goal_y = y + a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x
										blue_ghost.goal_y = y + a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x
										orange_ghost.goal_y = y + a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x
										pink_ghost.goal_y = y + a
									end

								goal_locus_refined = 1
									break
								end
							end
						end

						if vertical_path.x[i] ~= nil and vertical_path.y1[i] ~= nil and vertical_path.y2 ~= nil then

							if x == (vertical_path.x[i] + a + 232) and y >= (vertical_path.y1[i] + 24) and y <= (vertical_path.y2[i] + 24) then

								if ghost.selected == "red" then
									red_ghost.goal_x = x - a
									red_ghost.goal_y = y
								elseif ghost.selected == "blue" then
									blue_ghost.goal_x = x - a
									blue_ghost.goal_y = y
								elseif ghost.selected == "orange" then
									orange_ghost.goal_x = x - a
									orange_ghost.goal_y = y
								elseif ghost.selected == "pink" then
									pink_ghost.goal_x = x - a
									pink_ghost.goal_y = y
								end

								goal_locus_refined = 1
								break
							end


							if a ~= 0 then
								if x == (vertical_path.x[i] - a + 232) and y >= (vertical_path.y1[i] + 24) and y <= (vertical_path.y2[i] + 24) then

									if ghost.selected == "red" then
										red_ghost.goal_x = x + a
										red_ghost.goal_y = y
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x + a
										blue_ghost.goal_y = y
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x + a
										orange_ghost.goal_y = y
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x + a
										pink_ghost.goal_y = y
									end

									goal_locus_refined = 1
									break
								end
							end
						end
					end

					do -- check diagonals

						if a ~= 0 then

							if horizontal_path.y[i] ~= nil and horizontal_path.x1[i] ~= nil and horizontal_path.x2[i] ~= nil then

								if (y - a) == (horizontal_path.y[i] + 24) and (x - a) >= (horizontal_path.x1[i] + 232) and (x - a) <= (horizontal_path.x2[i] + 232) then

									if ghost.selected == "red" then
										red_ghost.goal_x = x - a
										red_ghost.goal_y = y - a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x - a
										blue_ghost.goal_y = y - a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x - a
										orange_ghost.goal_y = y - a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x - a
										pink_ghost.goal_y = y - a
									end

									goal_locus_refined = 1
									break
								end

								if (y - a) == (horizontal_path.y[i] + 24) and (x + a) >= (horizontal_path.x1[i] + 232) and (x + a) <= (horizontal_path.x2[i] + 232) then

									if ghost.selected == "red" then
										red_ghost.goal_x = x + a
										red_ghost.goal_y = y - a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x + a
										blue_ghost.goal_y = y - a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x + a
										orange_ghost.goal_y = y - a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x + a
										pink_ghost.goal_y = y - a
									end

									goal_locus_refined = 1
									break
								end

								if (y + a) == (horizontal_path.y[i] + 24) and (x + a) >= (horizontal_path.x1[i] + 232) and (x + a) <= (horizontal_path.x2[i] + 232) then
									if ghost.selected == "red" then
										red_ghost.goal_x = x + a
										red_ghost.goal_y = y + a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x + a
										blue_ghost.goal_y = y + a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x + a
										orange_ghost.goal_y = y + a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x + a
										pink_ghost.goal_y = y + a
									end

									goal_locus_refined = 1
									break
								end

								if (y + a) == (horizontal_path.y[i] + 24) and (x - a) >= (horizontal_path.x1[i] + 232) and (x - a) <= (horizontal_path.x2[i] + 232) then
									if ghost.selected == "red" then
										red_ghost.goal_x = x - a
										red_ghost.goal_y = y + a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x - a
										blue_ghost.goal_y = y + a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x - a
										orange_ghost.goal_y = y + a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x - a
										pink_ghost.goal_y = y + a
									end

									goal_locus_refined = 1
									break
								end

							end

							if vertical_path.x[i] ~= nil and vertical_path.y1[i] ~= nil and vertical_path.y2 ~= nil then

								if (x - a) == (vertical_path.x[i] + 232) and (y - a) >= (vertical_path.y1[i] + 24) and (y - a)	 <= (vertical_path.y2[i] + 24) then

									if ghost.selected == "red" then
										red_ghost.goal_x = x - a
										red_ghost.goal_y = y - a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x - a
										blue_ghost.goal_y = y - a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x - a
										orange_ghost.goal_y = y - a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x - a
										pink_ghost.goal_y = y - a
									end

									goal_locus_refined = 1
									break
								end

								if (x - a) == (vertical_path.x[i] + 232) and (y + a) >= (vertical_path.y1[i] + 24) and (y + a) <= (vertical_path.y2[i] + 24) then
									if ghost.selected == "red" then
										red_ghost.goal_x = x - a
										red_ghost.goal_y = y + a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x - a
										blue_ghost.goal_y = y + a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x - a
										orange_ghost.goal_y = y + a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x - a
										pink_ghost.goal_y = y + a
									end

									goal_locus_refined = 1
									break
								end

								if (x + a) == (vertical_path.x[i] + 232) and (y + a) >= (vertical_path.y1[i] + 24) and (y + a) <= (vertical_path.y2[i] + 24) then
									if ghost.selected == "red" then
										red_ghost.goal_x = x + a
										red_ghost.goal_y = y + a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x + a
										blue_ghost.goal_y = y + a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x + a
										orange_ghost.goal_y = y + a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x + a
										pink_ghost.goal_y = y + a
									end

									goal_locus_refined = 1
									break
								end

								if (x + a) == (vertical_path.x[i] + 232) and (y - a) >= (vertical_path.y1[i] + 24) and (y - a) <= (vertical_path.y2[i] + 24) then
									if ghost.selected == "red" then
										red_ghost.goal_x = x + a
										red_ghost.goal_y = y - a
									elseif ghost.selected == "blue" then
										blue_ghost.goal_x = x + a
										blue_ghost.goal_y = y - a
									elseif ghost.selected == "orange" then
										orange_ghost.goal_x = x + a
										orange_ghost.goal_y = y - a
									elseif ghost.selected == "pink" then
										pink_ghost.goal_x = x + a
										pink_ghost.goal_y = y - a
									end

									goal_locus_refined = 1
									break
								end
							end
						end
					end
				end

				if goal_locus_refined == 1 then
					goal_locus_refined = 0
					break
				end
			end
		end
		--

	elseif game_state == "level cleared" then

		if mouse_click_x >= (222 + 232) and mouse_click_x <= (222 + 232 + 120) and mouse_click_y >= (400+ 24) and mouse_click_y <= (400+ 24 + 24) then

			next_state = "reset"
			fade_state = "fade out"
			music_state = "fade out"
			next_music = game_music

		end


	elseif game_state == "lose" then

		if mouse_click_x >= (222 + 232) and mouse_click_x <= (222 + 232 + 120) and mouse_click_y >= (400+ 24) and mouse_click_y <= (400+ 24 + 24) then

			next_state = "intro"

			for i = 1, #high_scores.scores do

				if high_scores.scores[i] == "nil" then
					next_state = "submit score"
					save_slot = i
					break
				else
					if score > tonumber(high_scores.scores[i]) then
						next_state = "submit score"
						save_slot = i
						break
					end
				end
			end

			if next_state == "intro" then

				next_state = "intro"
				next_music = intro_music
				fade_state = "slow fade out"
				music_state = "slow fade out"

			elseif next_state == "submit score" then

				next_state = "submit score"
				fade_state = "slow fade out"
			end
		end
	end
end








function namcap_one_pixel_move()

	do -- check for warp spots
		if namcap.x == 560 and namcap.y == 350 then namcap.x = 0
		elseif namcap.x == 0 and namcap.y == 350 then namcap.x = 560
		end
	end

	do -- check for super pellets
		for i = 1, 4 do
			if namcap.x == (super_pellet.x[i] - 232) and namcap.y == (super_pellet.y[i] - 24) then
				do -- eat the super pellet
					if super_pellet.available[i] == 1 then
						super_pellet.available[i] = 0
						sfx.ahha:play()
						namcap.super = 7
					end
				end
			end
		end
	end

	do -- check for nodes
		for a = 1, #node.x do
			if namcap.x == node.x[a] and namcap.y == node.y[a] then

				do -- eat pellet and check if it is the last pellet
					if node.pellet[a] == 1 then

						node.pellet[a] = 0

						sfx.swipe[love.math.random(1,3)]:play()

						eaten_pellets = eaten_pellets + 1

						possible_score = ((64 - eaten_pellets) * level) + (3^level)

						if eaten_pellets == 64 then
							game_state = "lose"
							music_state = "fade out"
							next_music = lose_music
							sfx.boo:play()
							sfx.laugh[love.math.random(1,3)]:play()
							possible_score = 0
						end

					end
				end

				--[[
				reason = "Node reached"
				]]

				if node.type[a] == "c" then

					namcap.direction = namcap_ai("c")

				end

				if node.type[a] == "tu" then

					namcap.direction = namcap_ai("tu")

				end

				if node.type[a] == "td" then

					namcap.direction = namcap_ai("td")

				end

				if node.type[a] == "tr" then

					namcap.direction = namcap_ai("tr")

				end

				if node.type[a] == "tl" then

					namcap.direction = namcap_ai("tl")

				end


				if node.type[a] == "lu" then

					namcap.direction = namcap_ai("lu")

				end


				if node.type[a] == "ld" then

					namcap.direction = namcap_ai("ld")

				end

				if node.type[a] == "ru" then

					namcap.direction = namcap_ai("ru")

				end

				if node.type[a] == "rd" then

					namcap.direction = namcap_ai("rd")

				end
			end
		end
	end


	if namcap.ai_pix_counter >= 25 then
		--[[
		reason = "25 pix reached"
		]]
		namcap.direction = namcap_ai("no node")
	end


	if namcap.direction == "right" then
		namcap.x = namcap.x + 1
	elseif namcap.direction == "down" then
		namcap.y = namcap.y + 1
	elseif namcap.direction == "left" then
		namcap.x = namcap.x - 1
	elseif namcap.direction == "up" then
		namcap.y = namcap.y - 1
	end


	namcap.ai_pix_counter = (namcap.ai_pix_counter + 1)

end







function ghost_one_pixel_move()

	do -- red ghost


		if red_ghost.state == "normal" or red_ghost.state == "dead" then

			if red_ghost.direction == "right" then
				red_ghost.x = red_ghost.x + 1
			elseif red_ghost.direction == "down" then
				red_ghost.y = red_ghost.y + 1
			elseif red_ghost.direction == "left" then
				red_ghost.x = red_ghost.x - 1
			elseif red_ghost.direction == "up" then
				red_ghost.y = red_ghost.y - 1
			end

			do -- if arrived at goal, erase goal
				if red_ghost.state == "normal" then
					if red_ghost.goal_x ~= "" and (red_ghost.x + 232) == red_ghost.goal_x and (red_ghost.y + 24) == red_ghost.goal_y then
						red_ghost.goal_x = ""
						red_ghost.goal_y = ""
					end
				end
			end



			do -- check for warp spots
				if red_ghost.x == 560 and red_ghost.y == 350 then red_ghost.x = 0
				elseif red_ghost.x == 0 and red_ghost.y == 350 then red_ghost.x = 560
				end
			end

			do -- check for nodes
				for a = 1, #node.x do
					if red_ghost.x == node.x[a] and red_ghost.y == node.y[a] then

						if node.type[a] == "c" then

							if red_ghost.goal_x == "" then

								random = love.math.random(3)

								if random == 1 then
									-- nothing happens
								end

								if random == 2 then
									-- turn to the right
									if red_ghost.direction == "right" then red_ghost.direction = "down"
									elseif red_ghost.direction == "down" then red_ghost.direction = "left"
									elseif red_ghost.direction == "left" then red_ghost.direction = "up"
									elseif red_ghost.direction == "up" then red_ghost.direction = "right" end
								end

								if random == 3 then
									-- turn to the left
									if red_ghost.direction == "right" then red_ghost.direction = "up"
									elseif red_ghost.direction == "down" then red_ghost.direction = "right"
									elseif red_ghost.direction == "left" then red_ghost.direction = "down"
									elseif red_ghost.direction == "up" then red_ghost.direction = "left" end
								end

							else

								if red_ghost.goal_x ~= "" then
									red_ghost.direction = ghost_pathfinding(red_ghost.direction, node.x[a], node.y[a], "c", red_ghost.goal_x, red_ghost.goal_y)
								end
							end

						end


						if node.type[a] == "tu" then

							if red_ghost.goal_x == "" then

								random = love.math.random(2)

								if red_ghost.direction == "down" then
									if random == 1 then red_ghost.direction = "right"
									elseif random == 2 then red_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then red_ghost.direction = "up" end
								end

							else

								if red_ghost.goal_x ~= "" then
									red_ghost.direction = ghost_pathfinding(red_ghost.direction, node.x[a], node.y[a], "tu", red_ghost.goal_x, red_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "td" then

							if red_ghost.goal_x == "" then

								random = love.math.random(2)

								if red_ghost.direction == "up" then
									if random == 1 then red_ghost.direction = "right"
									elseif random == 2 then red_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then red_ghost.direction = "down" end
								end

							else
								if red_ghost.goal_x ~= "" then
									red_ghost.direction = ghost_pathfinding(red_ghost.direction, node.x[a], node.y[a], "td", red_ghost.goal_x, red_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tr" then

							if red_ghost.goal_x == "" then

								random = love.math.random(2)

								if red_ghost.direction == "left" then
									if random == 1 then red_ghost.direction = "up"
									elseif random == 2 then red_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then red_ghost.direction = "right" end
								end

							else
								if red_ghost.goal_x ~= "" then
									red_ghost.direction = ghost_pathfinding(red_ghost.direction, node.x[a], node.y[a], "tr", red_ghost.goal_x, red_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tl" then

							if red_ghost.goal_x == "" then

								random = love.math.random(2)

								if red_ghost.direction == "right" then
									if random == 1 then red_ghost.direction = "up"
									elseif random == 2 then red_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then red_ghost.direction = "left" end
								end

							else
								if red_ghost.goal_x ~= "" then
									red_ghost.direction = ghost_pathfinding(red_ghost.direction, node.x[a], node.y[a], "tl", red_ghost.goal_x, red_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "lu" then
							if red_ghost.direction == "right" then red_ghost.direction = "up"
							elseif red_ghost.direction == "down" then red_ghost.direction = "left" end
						end

						if node.type[a] == "ld" then
							if red_ghost.direction == "right" then red_ghost.direction = "down"
							elseif red_ghost.direction == "up" then red_ghost.direction = "left" end
						end

						if node.type[a] == "ru" then
							if red_ghost.direction == "left" then red_ghost.direction = "up"
							elseif red_ghost.direction == "down" then red_ghost.direction = "right" end
						end

						if node.type[a] == "rd" then
							if red_ghost.direction == "left" then red_ghost.direction = "down"
							elseif red_ghost.direction == "up" then red_ghost.direction = "right" end
						end
					end
				end
			end

		end

	end


	do -- blue ghost

		if blue_ghost.state == "normal" or blue_ghost.state == "dead" then

			if blue_ghost.direction == "right" then
				blue_ghost.x = blue_ghost.x + 1
			elseif blue_ghost.direction == "down" then
				blue_ghost.y = blue_ghost.y + 1
			elseif blue_ghost.direction == "left" then
				blue_ghost.x = blue_ghost.x - 1
			elseif blue_ghost.direction == "up" then
				blue_ghost.y = blue_ghost.y - 1
			end

			do -- if arrived at goal, erase goal
				if blue_ghost.state == "normal" then
					if blue_ghost.goal_x ~= "" and (blue_ghost.x + 232) == blue_ghost.goal_x and (blue_ghost.y + 24) == blue_ghost.goal_y then
						blue_ghost.goal_x = ""
						blue_ghost.goal_y = ""
					end
				end
			end


			do -- check for warp spots
				if blue_ghost.x == 560 and blue_ghost.y == 350 then blue_ghost.x = 0
				elseif blue_ghost.x == 0 and blue_ghost.y == 350 then blue_ghost.x = 560
				end
			end

			do -- check for nodes
				for a = 1, #node.x do
					if blue_ghost.x == node.x[a] and blue_ghost.y == node.y[a] then

						if node.type[a] == "c" then

							if blue_ghost.goal_x == "" then

								random = love.math.random(3)

								if random == 1 then
									-- nothing happens
								end

								if random == 2 then
									-- turn to the right
									if blue_ghost.direction == "right" then blue_ghost.direction = "down"
									elseif blue_ghost.direction == "down" then blue_ghost.direction = "left"
									elseif blue_ghost.direction == "left" then blue_ghost.direction = "up"
									elseif blue_ghost.direction == "up" then blue_ghost.direction = "right" end
								end

								if random == 3 then
									-- turn to the left
									if blue_ghost.direction == "right" then blue_ghost.direction = "up"
									elseif blue_ghost.direction == "down" then blue_ghost.direction = "right"
									elseif blue_ghost.direction == "left" then blue_ghost.direction = "down"
									elseif blue_ghost.direction == "up" then blue_ghost.direction = "left" end
								end

							else

								if blue_ghost.goal_x ~= "" then
									blue_ghost.direction = ghost_pathfinding(blue_ghost.direction, node.x[a], node.y[a], "c", blue_ghost.goal_x, blue_ghost.goal_y)
								end
							end

						end


						if node.type[a] == "tu" then

							if blue_ghost.goal_x == "" then

								random = love.math.random(2)

								if blue_ghost.direction == "down" then
									if random == 1 then blue_ghost.direction = "right"
									elseif random == 2 then blue_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then blue_ghost.direction = "up" end
								end

							else

								if blue_ghost.goal_x ~= "" then
									blue_ghost.direction = ghost_pathfinding(blue_ghost.direction, node.x[a], node.y[a], "tu", blue_ghost.goal_x, blue_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "td" then

							if blue_ghost.goal_x == "" then

								random = love.math.random(2)

								if blue_ghost.direction == "up" then
									if random == 1 then blue_ghost.direction = "right"
									elseif random == 2 then blue_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then blue_ghost.direction = "down" end
								end

							else
								if blue_ghost.goal_x ~= "" then
									blue_ghost.direction = ghost_pathfinding(blue_ghost.direction, node.x[a], node.y[a], "td", blue_ghost.goal_x, blue_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tr" then

							if blue_ghost.goal_x == "" then

								random = love.math.random(2)

								if blue_ghost.direction == "left" then
									if random == 1 then blue_ghost.direction = "up"
									elseif random == 2 then blue_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then blue_ghost.direction = "right" end
								end

							else
								if blue_ghost.goal_x ~= "" then
									blue_ghost.direction = ghost_pathfinding(blue_ghost.direction, node.x[a], node.y[a], "tr", blue_ghost.goal_x, blue_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tl" then

							if blue_ghost.goal_x == "" then

								random = love.math.random(2)

								if blue_ghost.direction == "right" then
									if random == 1 then blue_ghost.direction = "up"
									elseif random == 2 then blue_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then blue_ghost.direction = "left" end
								end

							else
								if blue_ghost.goal_x ~= "" then
									blue_ghost.direction = ghost_pathfinding(blue_ghost.direction, node.x[a], node.y[a], "tl", blue_ghost.goal_x, blue_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "lu" then
							if blue_ghost.direction == "right" then blue_ghost.direction = "up"
							elseif blue_ghost.direction == "down" then blue_ghost.direction = "left" end
						end

						if node.type[a] == "ld" then
							if blue_ghost.direction == "right" then blue_ghost.direction = "down"
							elseif blue_ghost.direction == "up" then blue_ghost.direction = "left" end
						end

						if node.type[a] == "ru" then
							if blue_ghost.direction == "left" then blue_ghost.direction = "up"
							elseif blue_ghost.direction == "down" then blue_ghost.direction = "right" end
						end

						if node.type[a] == "rd" then
							if blue_ghost.direction == "left" then blue_ghost.direction = "down"
							elseif blue_ghost.direction == "up" then blue_ghost.direction = "right" end
						end
					end
				end
			end

		end



	end





	do -- orange ghost

		if orange_ghost.state == "normal" or orange_ghost.state == "dead" then

			if orange_ghost.direction == "right" then
				orange_ghost.x = orange_ghost.x + 1
			elseif orange_ghost.direction == "down" then
				orange_ghost.y = orange_ghost.y + 1
			elseif orange_ghost.direction == "left" then
				orange_ghost.x = orange_ghost.x - 1
			elseif orange_ghost.direction == "up" then
				orange_ghost.y = orange_ghost.y - 1
			end


			do -- if arrived at goal, erase goal
				if orange_ghost.state == "normal" then
					if orange_ghost.goal_x ~= "" and (orange_ghost.x + 232) == orange_ghost.goal_x and (orange_ghost.y + 24) == orange_ghost.goal_y then
						orange_ghost.goal_x = ""
						orange_ghost.goal_y = ""
					end
				end
			end


			do -- check for warp spots
				if orange_ghost.x == 560 and orange_ghost.y == 350 then orange_ghost.x = 0
				elseif orange_ghost.x == 0 and orange_ghost.y == 350 then orange_ghost.x = 560
				end
			end

			do -- check for nodes
				for a = 1, #node.x do
					if orange_ghost.x == node.x[a] and orange_ghost.y == node.y[a] then

						if node.type[a] == "c" then

							if orange_ghost.goal_x == "" then

								random = love.math.random(3)

								if random == 1 then
									-- nothing happens
								end

								if random == 2 then
									-- turn to the right
									if orange_ghost.direction == "right" then orange_ghost.direction = "down"
									elseif orange_ghost.direction == "down" then orange_ghost.direction = "left"
									elseif orange_ghost.direction == "left" then orange_ghost.direction = "up"
									elseif orange_ghost.direction == "up" then orange_ghost.direction = "right" end
								end

								if random == 3 then
									-- turn to the left
									if orange_ghost.direction == "right" then orange_ghost.direction = "up"
									elseif orange_ghost.direction == "down" then orange_ghost.direction = "right"
									elseif orange_ghost.direction == "left" then orange_ghost.direction = "down"
									elseif orange_ghost.direction == "up" then orange_ghost.direction = "left" end
								end

							else

								if orange_ghost.goal_x ~= "" then
									orange_ghost.direction = ghost_pathfinding(orange_ghost.direction, node.x[a], node.y[a], "c", orange_ghost.goal_x, orange_ghost.goal_y)
								end
							end

						end


						if node.type[a] == "tu" then

							if orange_ghost.goal_x == "" then

								random = love.math.random(2)

								if orange_ghost.direction == "down" then
									if random == 1 then orange_ghost.direction = "right"
									elseif random == 2 then orange_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then orange_ghost.direction = "up" end
								end

							else

								if orange_ghost.goal_x ~= "" then
									orange_ghost.direction = ghost_pathfinding(orange_ghost.direction, node.x[a], node.y[a], "tu", orange_ghost.goal_x, orange_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "td" then

							if orange_ghost.goal_x == "" then

								random = love.math.random(2)

								if orange_ghost.direction == "up" then
									if random == 1 then orange_ghost.direction = "right"
									elseif random == 2 then orange_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then orange_ghost.direction = "down" end
								end

							else
								if orange_ghost.goal_x ~= "" then
									orange_ghost.direction = ghost_pathfinding(orange_ghost.direction, node.x[a], node.y[a], "td", orange_ghost.goal_x, orange_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tr" then

							if orange_ghost.goal_x == "" then

								random = love.math.random(2)

								if orange_ghost.direction == "left" then
									if random == 1 then orange_ghost.direction = "up"
									elseif random == 2 then orange_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then orange_ghost.direction = "right" end
								end

							else
								if orange_ghost.goal_x ~= "" then
									orange_ghost.direction = ghost_pathfinding(orange_ghost.direction, node.x[a], node.y[a], "tr", orange_ghost.goal_x, orange_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tl" then

							if orange_ghost.goal_x == "" then

								random = love.math.random(2)

								if orange_ghost.direction == "right" then
									if random == 1 then orange_ghost.direction = "up"
									elseif random == 2 then orange_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then orange_ghost.direction = "left" end
								end

							else
								if orange_ghost.goal_x ~= "" then
									orange_ghost.direction = ghost_pathfinding(orange_ghost.direction, node.x[a], node.y[a], "tl", orange_ghost.goal_x, orange_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "lu" then
							if orange_ghost.direction == "right" then orange_ghost.direction = "up"
							elseif orange_ghost.direction == "down" then orange_ghost.direction = "left" end
						end

						if node.type[a] == "ld" then
							if orange_ghost.direction == "right" then orange_ghost.direction = "down"
							elseif orange_ghost.direction == "up" then orange_ghost.direction = "left" end
						end

						if node.type[a] == "ru" then
							if orange_ghost.direction == "left" then orange_ghost.direction = "up"
							elseif orange_ghost.direction == "down" then orange_ghost.direction = "right" end
						end

						if node.type[a] == "rd" then
							if orange_ghost.direction == "left" then orange_ghost.direction = "down"
							elseif orange_ghost.direction == "up" then orange_ghost.direction = "right" end
						end
					end
				end
			end
		end

	end





	do -- pink ghost

		if pink_ghost.state == "normal" or pink_ghost.state == "dead" then

			if pink_ghost.direction == "right" then
				pink_ghost.x = pink_ghost.x + 1
			elseif pink_ghost.direction == "down" then
				pink_ghost.y = pink_ghost.y + 1
			elseif pink_ghost.direction == "left" then
				pink_ghost.x = pink_ghost.x - 1
			elseif pink_ghost.direction == "up" then
				pink_ghost.y = pink_ghost.y - 1
			end

			do -- if arrived at goal, erase goal
				if pink_ghost.state == "normal" then
					if pink_ghost.goal_x ~= "" and (pink_ghost.x + 232) == pink_ghost.goal_x and (pink_ghost.y + 24) == pink_ghost.goal_y then
						pink_ghost.goal_x = ""
						pink_ghost.goal_y = ""
					end
				end
			end


			do -- check for warp spots
				if pink_ghost.x == 560 and pink_ghost.y == 350 then pink_ghost.x = 0
				elseif pink_ghost.x == 0 and pink_ghost.y == 350 then pink_ghost.x = 560
				end
			end

			do -- check for nodes
				for a = 1, #node.x do
					if pink_ghost.x == node.x[a] and pink_ghost.y == node.y[a] then

						if node.type[a] == "c" then

							if pink_ghost.goal_x == "" then

								random = love.math.random(3)

								if random == 1 then
									-- nothing happens
								end

								if random == 2 then
									-- turn to the right
									if pink_ghost.direction == "right" then pink_ghost.direction = "down"
									elseif pink_ghost.direction == "down" then pink_ghost.direction = "left"
									elseif pink_ghost.direction == "left" then pink_ghost.direction = "up"
									elseif pink_ghost.direction == "up" then pink_ghost.direction = "right" end
								end

								if random == 3 then
									-- turn to the left
									if pink_ghost.direction == "right" then pink_ghost.direction = "up"
									elseif pink_ghost.direction == "down" then pink_ghost.direction = "right"
									elseif pink_ghost.direction == "left" then pink_ghost.direction = "down"
									elseif pink_ghost.direction == "up" then pink_ghost.direction = "left" end
								end

							else

								if pink_ghost.goal_x ~= "" then
									pink_ghost.direction = ghost_pathfinding(pink_ghost.direction, node.x[a], node.y[a], "c", pink_ghost.goal_x, pink_ghost.goal_y)
								end
							end

						end


						if node.type[a] == "tu" then

							if pink_ghost.goal_x == "" then

								random = love.math.random(2)

								if pink_ghost.direction == "down" then
									if random == 1 then pink_ghost.direction = "right"
									elseif random == 2 then pink_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then pink_ghost.direction = "up" end
								end

							else

								if pink_ghost.goal_x ~= "" then
									pink_ghost.direction = ghost_pathfinding(pink_ghost.direction, node.x[a], node.y[a], "tu", pink_ghost.goal_x, pink_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "td" then

							if pink_ghost.goal_x == "" then

								random = love.math.random(2)

								if pink_ghost.direction == "up" then
									if random == 1 then pink_ghost.direction = "right"
									elseif random == 2 then pink_ghost.direction = "left" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then pink_ghost.direction = "down" end
								end

							else
								if pink_ghost.goal_x ~= "" then
									pink_ghost.direction = ghost_pathfinding(pink_ghost.direction, node.x[a], node.y[a], "td", pink_ghost.goal_x, pink_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tr" then

							if pink_ghost.goal_x == "" then

								random = love.math.random(2)

								if pink_ghost.direction == "left" then
									if random == 1 then pink_ghost.direction = "up"
									elseif random == 2 then pink_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then pink_ghost.direction = "right" end
								end

							else
								if pink_ghost.goal_x ~= "" then
									pink_ghost.direction = ghost_pathfinding(pink_ghost.direction, node.x[a], node.y[a], "tr", pink_ghost.goal_x, pink_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "tl" then

							if pink_ghost.goal_x == "" then

								random = love.math.random(2)

								if pink_ghost.direction == "right" then
									if random == 1 then pink_ghost.direction = "up"
									elseif random == 2 then pink_ghost.direction = "down" end
								else
									if random == 1 then -- nothing changes
									elseif random == 2 then pink_ghost.direction = "left" end
								end

							else
								if pink_ghost.goal_x ~= "" then
									pink_ghost.direction = ghost_pathfinding(pink_ghost.direction, node.x[a], node.y[a], "tl", pink_ghost.goal_x, pink_ghost.goal_y)
								end
							end
						end

						if node.type[a] == "lu" then
							if pink_ghost.direction == "right" then pink_ghost.direction = "up"
							elseif pink_ghost.direction == "down" then pink_ghost.direction = "left" end
						end

						if node.type[a] == "ld" then
							if pink_ghost.direction == "right" then pink_ghost.direction = "down"
							elseif pink_ghost.direction == "up" then pink_ghost.direction = "left" end
						end

						if node.type[a] == "ru" then
							if pink_ghost.direction == "left" then pink_ghost.direction = "up"
							elseif pink_ghost.direction == "down" then pink_ghost.direction = "right" end
						end

						if node.type[a] == "rd" then
							if pink_ghost.direction == "left" then pink_ghost.direction = "down"
							elseif pink_ghost.direction == "up" then pink_ghost.direction = "right" end
						end
					end
				end
			end
		end
	end
















end






function ghost_pathfinding(ghost_direction, node_x, node_y, node_type, goal_x, goal_y)

	local pathfinder = {}
	local choice = {}
	local total_distance = {}

	if node_type == "c" then

		if ghost_direction == "up" then
			choice[1] = "up"
			choice[2] = "right"
			choice[3] = "left"
		elseif ghost_direction == "right" then
			choice[1] = "up"
			choice[2] = "right"
			choice[3] = "down"
		elseif ghost_direction == "down" then
			choice[1] = "right"
			choice[2] = "down"
			choice[3] = "left"
		elseif ghost_direction == "left" then
			choice[1] = "up"
			choice[2] = "down"
			choice[3] = "left"
		end

	elseif node_type == "tu" then

		if ghost_direction == "right" then
			choice[1] = "up"
			choice[2] = "right"
			choice[3] = nil
		elseif ghost_direction == "down" then
			choice[1] = "right"
			choice[2] = "left"
			choice[3] = nil
		elseif ghost_direction == "left" then
			choice[1] = "up"
			choice[2] = "left"
			choice[3] = nil
		end

	elseif node_type == "tr" then

		if ghost_direction == "up" then
			choice[1] = "up"
			choice[2] = "right"
			choice[3] = nil
		elseif ghost_direction == "down" then
			choice[1] = "right"
			choice[2] = "down"
			choice[3] = nil
		elseif ghost_direction == "left" then
			choice[1] = "up"
			choice[2] = "down"
			choice[3] = nil
		end


	elseif node_type == "td" then

		if ghost_direction == "up" then
			choice[1] = "right"
			choice[2] = "left"
			choice[3] = nil
		elseif ghost_direction == "right" then
			choice[1] = "right"
			choice[2] = "down"
			choice[3] = nil
		elseif ghost_direction == "left" then
			choice[1] = "down"
			choice[2] = "left"
			choice[3] = nil
		end

	elseif node_type == "tl" then

		if ghost_direction == "up" then
			choice[1] = "up"
			choice[2] = "left"
			choice[3] = nil
		elseif ghost_direction == "right" then
			choice[1] = "up"
			choice[2] = "down"
			choice[3] = nil
		elseif ghost_direction == "down" then
			choice[1] = "left"
			choice[2] = "down"
			choice[3] = nil
		end

	end



	for i = 1, 3 do

		local time_to_break = 0

		if choice[i] ~= nil then

			pathfinder.direction = choice[i]
			pathfinder.x = node_x
			pathfinder.y = node_y
			pathfinder.distance = 0

			for z = 1, 300 do

				if pathfinder.direction == "up" then
					pathfinder.y = pathfinder.y - 1
				elseif pathfinder.direction == "right" then
					pathfinder.x = pathfinder.x + 1
				elseif pathfinder.direction == "down" then
					pathfinder.y = pathfinder.y + 1
				elseif pathfinder.direction == "left" then
					pathfinder.x = pathfinder.x -1
				end


				do -- check for warp spots
					if pathfinder.x == 560 and pathfinder.y == 350 then
						pathfinder.x = 0
					elseif pathfinder.x == 0 and pathfinder.y == 350 then
						pathfinder.x = 560
					end
				end

				pathfinder.distance = pathfinder.distance + 1

				if (pathfinder.x + 232) == goal_x and (pathfinder.y + 24) == goal_y then
					return choice[i]
				end


				for a = 1, #node.x do
					if pathfinder.x == node.x[a] and pathfinder.y == node.y[a] then

						if node.type[a] == "lu" then
							if pathfinder.direction == "right" then pathfinder.direction = "up"
							elseif pathfinder.direction == "down" then pathfinder.direction = "left"
							end
						elseif node.type[a] == "ld" then
							if pathfinder.direction == "right" then pathfinder.direction = "down"
							elseif pathfinder.direction == "up" then pathfinder.direction = "left"
							end
						elseif node.type[a] == "ru" then
							if pathfinder.direction == "left" then pathfinder.direction = "up"
							elseif pathfinder.direction == "down" then pathfinder.direction = "right"
							end
						elseif node.type[a] == "rd" then
							if pathfinder.direction == "left" then pathfinder.direction = "down"
							elseif pathfinder.direction == "up" then pathfinder.direction = "right"
							end
						elseif node.type[a] == "c" or node.type[a] == "tu" or node.type[a] == "tr" or node.type[a] == "td" or node.type[a] == "tl" then
							time_to_break = 1
							break
						end
					end
				end

				if time_to_break == 1 then
					break
				end

			end

			total_distance[i] = pathfinder.distance + ((math.abs((pathfinder.y + 24) - goal_y) + math.abs((pathfinder.x + 232) - goal_x)) * 1.2)

		end
	end


	if total_distance[3] == nil then

		if total_distance[1] <= total_distance[2] then
			return choice[1]
		else
			return choice[2]
		end

	else

		if total_distance[1] <= total_distance[2] and total_distance[1] <= total_distance[3] then
			return choice[1]
		elseif total_distance[2] <= total_distance[1] and total_distance[2] <= total_distance[3] then
			return choice[2]
		elseif total_distance[3] <= total_distance[1] and total_distance[3] <= total_distance [2] then
			return choice[3]
		end
	end
end


function namcap_ai(location) -- location refers to a node... If namcap is not on a node, it will be nil. This function returns a direction for namcap to face.

	-- New AI plan - Figure out pellets first, then work on ghosts.

	-- You demonstratably NEED 300 pix short range spider bots to find nearest pellet in order to avoid namcap's indecisiveness.
	-- You also demonstratably NEED a long-range scan to get namcap to where his short-range spider bots are useful... BUT only if no short-range pellets were found.
	-- This long range scan needs to use the gravity method from all nearest choice-nodes in all available movement directions.

	-- Step 1: Send out Spider Bots to 300 pix. Record the coordinants of the nearest decision nodes in all available directions. Also, add (value of found pellets / distance traveled)
	-- to the estimated utility of choosing that direction. Use that to determine direction.

	-- Step 2: If no pellets have been found with this short range scan, perform gravity method on the coordinants of the nearest accessable decision nodes to pick a direction.


	-- reset the pixel counter since namcap has triggered ai.
	namcap.ai_pix_counter = 0


	--[[

	-- Reset debugging variables

	for d = 1, #value_text.x do
		value_text.x[d] = nil
		value_text.y[d] = nil
		value_text.v[d] = nil
		value_text.type[d] = nil
	end

	]]


	-- Define Local Variables
	local pathfinder = {}
	pathfinder.x = {}
	pathfinder.y = {}
	pathfinder.direction = {}
	pathfinder.choice_affinity = {}
	pathfinder.distance_traveled = {}
	pathfinder.split_already = {}
	pathfinder.p_val_reduct = {}

	local choice_value = {}
	choice_value.up = -9999999999
	choice_value.right = -9999999999
	choice_value.down = -9999999999
	choice_value.left = -9999999999


	choice_node = {}
	choice_node.up_x = nil
	choice_node.up_y = nil
	choice_node.right_x = nil
	choice_node.right_y = nil
	choice_node.down_x = nil
	choice_node.down_y = nil
	choice_node.left_x = nil
	choice_node.left_y = nil

	local pellet_value = 10000000 -- (10000000 * ((100 + ((eaten_pellets * 80) / 64)) / 100))
	p_count = 0

	local short_range_successful = 0

	local ghost_counted = {}

	ghost_counted.up_red = 0
	ghost_counted.right_red = 0
	ghost_counted.down_red = 0
	ghost_counted.left_red = 0

	ghost_counted.up_blue = 0
	ghost_counted.right_blue = 0
	ghost_counted.down_blue = 0
	ghost_counted.left_blue = 0

	ghost_counted.up_orange = 0
	ghost_counted.right_orange = 0
	ghost_counted.down_orange = 0
	ghost_counted.left_orange = 0

	ghost_counted.up_pink = 0
	ghost_counted.right_pink = 0
	ghost_counted.down_pink = 0
	ghost_counted.left_pink = 0

	g_count = {}
	g_count.up = 0
	g_count.right = 0
	g_count.down = 0
	g_count.left = 0
	g_count.total = 0

	local super_pellet_counted = {}
	super_pellet_counted.up = {}
	super_pellet_counted.right = {}
	super_pellet_counted.down = {}
	super_pellet_counted.left = {}

	local super_pellet_value = (-30000 + (30000 * (eaten_pellets / 64)))

	for i = 1, 4 do
		super_pellet_counted.up[i] = 0
		super_pellet_counted.right[i] = 0
		super_pellet_counted.down[i] = 0
		super_pellet_counted.left[i] = 0
	end

	local super_pellet_influence = 0



	--
	if location == "no node" then -- if not on a node, namcap has only two choices, forward or reverse. But if he is on a node he has more choices

		pathfinder.x[1] = namcap.x
		pathfinder.y[1] = namcap.y
		pathfinder.direction[1] = namcap.direction
		pathfinder.choice_affinity[1] = namcap.direction
		pathfinder.distance_traveled[1] = 0
		pathfinder.split_already[1] = 0
		pathfinder.p_val_reduct[1] = 1

		pathfinder.x[2] = namcap.x
		pathfinder.y[2] = namcap.y

		if namcap.direction == "up" then
			pathfinder.direction[2] = "down"
			choice_value.up = 0
			choice_value.down = 0
		elseif namcap.direction == "right" then
			pathfinder.direction[2] = "left"
			choice_value.right = 0
			choice_value.left = 0
		elseif namcap.direction == "down" then
			pathfinder.direction[2] = "up"
			choice_value.up = 0
			choice_value.down = 0
		elseif namcap.direction == "left" then
			pathfinder.direction[2] = "right"
			choice_value.right = 0
			choice_value.left = 0
		end

		pathfinder.choice_affinity[2] = pathfinder.direction[2]
		pathfinder.distance_traveled[2] = 0
		pathfinder.split_already[2] = 0
		pathfinder.p_val_reduct[2] = 1

	else -- if he is on a node...

		if location == "c" then

			for i = 1, 4 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "right"
			pathfinder.direction[3] = "down"
			pathfinder.direction[4] = "left"

			for i = 1, 4 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.right = 0
			choice_value.down = 0
			choice_value.left = 0

		elseif location == "tu" then

			for i = 1, 3 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "right"
			pathfinder.direction[3] = "left"

			for i = 1, 3 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.right = 0
			choice_value.left = 0

		elseif location == "tr" then

			for i = 1, 3 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "right"
			pathfinder.direction[3] = "down"

			for i = 1, 3 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.right = 0
			choice_value.down = 0

		elseif location == "td" then

			for i = 1, 3 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "right"
			pathfinder.direction[2] = "down"
			pathfinder.direction[3] = "left"

			for i = 1, 3 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.right = 0
			choice_value.down = 0
			choice_value.left = 0

		elseif location == "tl" then

			for i = 1, 3 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "down"
			pathfinder.direction[3] = "left"

			for i = 1, 3 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.down = 0
			choice_value.left = 0

		elseif location == "ru" then

			for i = 1, 2 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "right"

			for i = 1, 2 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.right = 0

		elseif location == "rd" then

			for i = 1, 2 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "right"
			pathfinder.direction[2] = "down"

			for i = 1, 2 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.right = 0
			choice_value.down = 0

		elseif location == "lu" then

			for i = 1, 2 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "up"
			pathfinder.direction[2] = "left"

			for i = 1, 2 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.up = 0
			choice_value.left = 0

		elseif location == "ld" then

			for i = 1, 2 do
				pathfinder.x[i] = namcap.x
				pathfinder.y[i] = namcap.y
			end

			pathfinder.direction[1] = "down"
			pathfinder.direction[2] = "left"

			for i = 1, 2 do
				pathfinder.choice_affinity[i] = pathfinder.direction[i]
				pathfinder.distance_traveled[i] = 0
				pathfinder.split_already[i] = 0
				pathfinder.p_val_reduct[i] = 1
			end

			choice_value.down = 0
			choice_value.left = 0

		end
	end
	--

			-- Initial First Move for initial Bots
	for i = 1, #pathfinder.x do

		if pathfinder.direction[i] == "up" then
			pathfinder.y[i] = pathfinder.y[i] - 1
		elseif pathfinder.direction[i] == "right" then
			pathfinder.x[i] = pathfinder.x[i] + 1
		elseif pathfinder.direction[i] == "down" then
			pathfinder.y[i] = pathfinder.y[i] + 1
		elseif pathfinder.direction[i] == "left" then
			pathfinder.x[i] = pathfinder.x[i] -1
		end

		-- increase distance travelled
		pathfinder.distance_traveled[i] = pathfinder.distance_traveled[i] + 1

	end



	-- Start automatic spider bot roaming
	for z = 1, 300 do

		for i = 1, #pathfinder.x do

			do -- check for warp spots
				if pathfinder.x[i] == 560 and pathfinder.y[i] == 350 then pathfinder.x[i] = 0
				elseif pathfinder.x[i] == 0 and pathfinder.y[i] == 350 then pathfinder.x[i] = 560
				end
			end





			--
			do -- Ghost exiting the Ghost house detection

				if pathfinder.x[i] == 280 and pathfinder.y[i] == 290 then

					if pathfinder.choice_affinity[i] == "up" then

						if red_ghost.state == "exit" and ghost_counted.up_red == 0 then

							if namcap.super <= 1 then

								choice_value.up = choice_value.up - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))


							elseif namcap.super > 1 then

								choice_value.up = choice_value.up + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_red = 1

						end

						if blue_ghost.state == "exit" and ghost_counted.up_blue == 0 then

							if namcap.super <= 1 then

								choice_value.up = choice_value.up - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.up = choice_value.up + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_blue = 1

						end

						if orange_ghost.state == "exit" and ghost_counted.up_orange == 0 then

							if namcap.super <= 1 then

								choice_value.up = choice_value.up - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.up = choice_value.up + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_orange = 1

						end

						if pink_ghost.state == "exit" and ghost_counted.up_pink == 0 then

							if namcap.super <= 1 then

								choice_value.up = choice_value.up - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.up = choice_value.up + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_pink = 1

						end

					elseif pathfinder.choice_affinity[i] == "right" then

						if red_ghost.state == "exit" and ghost_counted.right_red == 0 then

							if namcap.super <= 1 then

								choice_value.right = choice_value.right - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.right = choice_value.right + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_red = 1

						end

						if blue_ghost.state == "exit" and ghost_counted.right_blue == 0 then

							if namcap.super <= 1 then

								choice_value.right = choice_value.right - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.right = choice_value.right + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_blue = 1

						end

						if orange_ghost.state == "exit" and ghost_counted.right_orange == 0 then

							if namcap.super <= 1 then

								choice_value.right = choice_value.right - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.right = choice_value.right + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_orange = 1

						end

						if pink_ghost.state == "exit" and ghost_counted.right_pink == 0 then

							if namcap.super <= 1 then

								choice_value.right = choice_value.right - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.right = choice_value.right + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_pink = 1

						end

					elseif pathfinder.choice_affinity[i] == "down" then

						if red_ghost.state == "exit" and ghost_counted.down_red == 0 then

							if namcap.super <= 1 then

								choice_value.down = choice_value.down - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.down = choice_value.down + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_red = 1

						end

						if blue_ghost.state == "exit" and ghost_counted.down_blue == 0 then

							if namcap.super <= 1 then

								choice_value.down = choice_value.down - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.down = choice_value.down + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_blue = 1

						end

						if orange_ghost.state == "exit" and ghost_counted.down_orange == 0 then

							if namcap.super <= 1 then

								choice_value.down = choice_value.down - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.down = choice_value.down + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_orange = 1

						end

						if pink_ghost.state == "exit" and ghost_counted.down_pink == 0 then

							if namcap.super <= 1 then

								choice_value.down = choice_value.down - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.down = choice_value.down + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_pink = 1

						end

					elseif pathfinder.choice_affinity[i] == "left" then

						if red_ghost.state == "exit" and ghost_counted.left_red == 0 then

							if namcap.super <= 1 then

								choice_value.left = choice_value.left - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.left = choice_value.left + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = red_ghost.x
								--value_text.y[#value_text.y + 1] = red_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_red = 1

						end

						if blue_ghost.state == "exit" and ghost_counted.left_blue == 0 then

							if namcap.super <= 1 then

								choice_value.left = choice_value.left - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.left = choice_value.left + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = blue_ghost.x
								--value_text.y[#value_text.y + 1] = blue_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_blue = 1

						end

						if orange_ghost.state == "exit" and ghost_counted.left_orange == 0 then

							if namcap.super <= 1 then

								choice_value.left = choice_value.left - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.left = choice_value.left + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = orange_ghost.x
								--value_text.y[#value_text.y + 1] = orange_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_orange = 1

						end

						if pink_ghost.state == "exit" and ghost_counted.left_pink == 0 then

							if namcap.super <= 1 then

								choice_value.left = choice_value.left - (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = - math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 1.8))

							elseif namcap.super > 1 then

								choice_value.left = choice_value.left + (28000000 / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.x[#value_text.x + 1] = pink_ghost.x
								--value_text.y[#value_text.y + 1] = pink_ghost.y
								--value_text.v[#value_text.v + 1] = math.ceil (28000000 / (pathfinder.distance_traveled[i] ^ 2))

							end

							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_pink = 1

						end

					end

				end

			end
			--

			--
			do -- regular Ghost detection

				--
				function red_ghost_val()

					local red_ghost_value = 30000000

					if red_ghost.direction == "up" then

						if pathfinder.direction[i] == "down" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								red_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if red_ghost_value < 0 then red_ghost_value = 0 end
								if red_ghost_value > 25000000 then red_ghost_value = 25000000 end
							else
								red_ghost_value = 0
								if red_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										red_ghost_value = 30000000
									end
								end
							end
						end

					elseif red_ghost.direction == "right" then

						if pathfinder.direction[i] == "left" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								red_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if red_ghost_value < 0 then red_ghost_value = 0 end
								if red_ghost_value > 25000000 then red_ghost_value = 25000000 end
							else
								red_ghost_value = 0
								if red_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										red_ghost_value = 30000000
									end
								end
							end
						end

					elseif red_ghost.direction == "down" then

						if pathfinder.direction[i] == "up" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								red_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if red_ghost_value < 0 then red_ghost_value = 0 end
								if red_ghost_value > 25000000 then red_ghost_value = 25000000 end
							else
								red_ghost_value = 0
								if red_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										red_ghost_value = 30000000
									end
								end
							end
						end


					elseif red_ghost.direction == "left" then

						if pathfinder.direction[i] == "right" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								red_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if red_ghost_value < 0 then red_ghost_value = 0 end
								if red_ghost_value > 25000000 then red_ghost_value = 25000000 end
							else
								red_ghost_value = 0
								if red_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										red_ghost_value = 30000000
									end
								end
							end
						end

					end

					return red_ghost_value

				end


				function blue_ghost_val()

					local blue_ghost_value = 30000000

					if blue_ghost.direction == "up" then

						if pathfinder.direction[i] == "down" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								blue_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if blue_ghost_value < 0 then blue_ghost_value = 0 end
								if blue_ghost_value > 25000000 then blue_ghost_value = 25000000 end
							else
								blue_ghost_value = 0
								if blue_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										blue_ghost_value = 30000000
									end
								end
							end
						end

					elseif blue_ghost.direction == "right" then

						if pathfinder.direction[i] == "left" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								blue_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if blue_ghost_value < 0 then blue_ghost_value = 0 end
								if blue_ghost_value > 25000000 then blue_ghost_value = 25000000 end
							else
								blue_ghost_value = 0
								if blue_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										blue_ghost_value = 30000000
									end
								end
							end
						end

					elseif blue_ghost.direction == "down" then

						if pathfinder.direction[i] == "up" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								blue_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if blue_ghost_value < 0 then blue_ghost_value = 0 end
								if blue_ghost_value > 25000000 then blue_ghost_value = 25000000 end
							else
								blue_ghost_value = 0
								if blue_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										blue_ghost_value = 30000000
									end
								end
							end
						end


					elseif blue_ghost.direction == "left" then

						if pathfinder.direction[i] == "right" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								blue_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if blue_ghost_value < 0 then blue_ghost_value = 0 end
								if blue_ghost_value > 25000000 then blue_ghost_value = 25000000 end
							else
								blue_ghost_value = 0
								if blue_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										blue_ghost_value = 30000000
									end
								end
							end
						end

					end

					return blue_ghost_value

				end

				function orange_ghost_val()

					local orange_ghost_value = 30000000

					if orange_ghost.direction == "up" then

						if pathfinder.direction[i] == "down" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								orange_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if orange_ghost_value < 0 then orange_ghost_value = 0 end
								if orange_ghost_value > 25000000 then orange_ghost_value = 25000000 end
							else
								orange_ghost_value = 0
								if orange_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										orange_ghost_value = 30000000
									end
								end
							end
						end

					elseif orange_ghost.direction == "right" then

						if pathfinder.direction[i] == "left" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								orange_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if orange_ghost_value < 0 then orange_ghost_value = 0 end
								if orange_ghost_value > 25000000 then orange_ghost_value = 25000000 end
							else
								orange_ghost_value = 0
								if orange_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										orange_ghost_value = 30000000
									end
								end
							end
						end

					elseif orange_ghost.direction == "down" then

						if pathfinder.direction[i] == "up" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								orange_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if orange_ghost_value < 0 then orange_ghost_value = 0 end
								if orange_ghost_value > 25000000 then orange_ghost_value = 25000000 end
							else
								orange_ghost_value = 0
								if orange_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										orange_ghost_value = 30000000
									end
								end
							end
						end


					elseif orange_ghost.direction == "left" then

						if pathfinder.direction[i] == "right" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								orange_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if orange_ghost_value < 0 then orange_ghost_value = 0 end
								if orange_ghost_value > 25000000 then orange_ghost_value = 25000000 end
							else
								orange_ghost_value = 0
								if orange_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										orange_ghost_value = 30000000
									end
								end
							end
						end

					end

					return orange_ghost_value

				end

				function pink_ghost_val()

					local pink_ghost_value = 30000000

					if pink_ghost.direction == "up" then

						if pathfinder.direction[i] == "down" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								pink_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if pink_ghost_value < 0 then pink_ghost_value = 0 end
								if pink_ghost_value > 25000000 then pink_ghost_value = 25000000 end
							else
								pink_ghost_value = 0
								if pink_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										pink_ghost_value = 30000000
									end
								end
							end
						end

					elseif pink_ghost.direction == "right" then

						if pathfinder.direction[i] == "left" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								pink_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if pink_ghost_value < 0 then pink_ghost_value = 0 end
								if pink_ghost_value > 25000000 then pink_ghost_value = 25000000 end
							else
								pink_ghost_value = 0
								if pink_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										pink_ghost_value = 30000000
									end
								end
							end
						end

					elseif pink_ghost.direction == "down" then

						if pathfinder.direction[i] == "up" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								pink_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if pink_ghost_value < 0 then pink_ghost_value = 0 end
								if pink_ghost_value > 25000000 then pink_ghost_value = 25000000 end
							else
								pink_ghost_value = 0
								if pink_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										pink_ghost_value = 30000000
									end
								end
							end
						end


					elseif pink_ghost.direction == "left" then

						if pathfinder.direction[i] == "right" then
							if namcap.super < 1 then
								pathfinder.p_val_reduct[i] = 0
							end
						else
							if namcap.super > 1 then
								pink_ghost_value = ((namcap.speed - ghost.speed) * 250000)
								if pink_ghost_value < 0 then pink_ghost_value = 0 end
								if pink_ghost_value > 25000000 then pink_ghost_value = 25000000 end
							else
								pink_ghost_value = 0
								if pink_ghost.direction == namcap.direction then
									if pathfinder.distance_traveled[i] <= (25 + (namcap.speed - ghost.speed)) then
										pink_ghost_value = 30000000
									end
								end
							end
						end

					end

					return pink_ghost_value

				end

				--

				if namcap.super <= 1 then

					if red_ghost.state == "normal" and pathfinder.x[i] == red_ghost.x and pathfinder.y[i] == red_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_red == 0 then

							choice_value.up = choice_value.up - (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.up = g_count.up + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_red = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_red == 0 then

							choice_value.right = choice_value.right - (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.right = g_count.right + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_red = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_red == 0 then

							choice_value.down = choice_value.down - (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.down = g_count.down + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_red = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_red == 0 then

							choice_value.left = choice_value.left - (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.left = g_count.left + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_red = 1

						end

					end


					if blue_ghost.state == "normal" and pathfinder.x[i] == blue_ghost.x and pathfinder.y[i] == blue_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_blue == 0 then

							choice_value.up = choice_value.up - (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.up = g_count.up + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_blue = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_blue == 0 then

							choice_value.right = choice_value.right - (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.right = g_count.right + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_blue = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_blue == 0 then

							choice_value.down = choice_value.down - (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.down = g_count.down + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_blue = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_blue == 0 then

							choice_value.left = choice_value.left - (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.left = g_count.left + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_blue = 1

						end

					end


					if orange_ghost.state == "normal" and pathfinder.x[i] == orange_ghost.x and pathfinder.y[i] == orange_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_orange == 0 then

							choice_value.up = choice_value.up - (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.up = g_count.up + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_orange = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_orange == 0 then

							choice_value.right = choice_value.right - (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.right = g_count.right + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_orange = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_orange == 0 then

							choice_value.down = choice_value.down - (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.down = g_count.down + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_orange = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_orange == 0 then

							choice_value.left = choice_value.left - (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.left = g_count.left + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_orange = 1

						end

					end


					if pink_ghost.state == "normal" and pathfinder.x[i] == pink_ghost.x and pathfinder.y[i] == pink_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_pink == 0 then

							choice_value.up = choice_value.up - (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.up = g_count.up + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_pink = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_pink == 0 then

							choice_value.right = choice_value.right - (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.right = g_count.right + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_pink = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_pink == 0 then

							choice_value.down = choice_value.down - (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.down = g_count.down + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_pink = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_pink == 0 then

							choice_value.left = choice_value.left - (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							g_count.left = g_count.left + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = - math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 1.8))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_pink = 1

						end

					end


				elseif namcap.super > 1 then

					if red_ghost.state == "normal" and pathfinder.x[i] == red_ghost.x and pathfinder.y[i] == red_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_red == 0 then

							choice_value.up = choice_value.up + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_red = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_red == 0 then

							choice_value.right = choice_value.right + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_red = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_red == 0 then

							choice_value.down = choice_value.down + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_red = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_red == 0 then

							choice_value.left = choice_value.left + (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = red_ghost.x
							--value_text.y[#value_text.y + 1] = red_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (red_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_red = 1

						end

					end


					if blue_ghost.state == "normal" and pathfinder.x[i] == blue_ghost.x and pathfinder.y[i] == blue_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_blue == 0 then

							choice_value.up = choice_value.up + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_blue = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_blue == 0 then

							choice_value.right = choice_value.right + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_blue = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_blue == 0 then

							choice_value.down = choice_value.down + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_blue = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_blue == 0 then

							choice_value.left = choice_value.left + (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = blue_ghost.x
							--value_text.y[#value_text.y + 1] = blue_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (blue_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_blue = 1

						end

					end


					if orange_ghost.state == "normal" and pathfinder.x[i] == orange_ghost.x and pathfinder.y[i] == orange_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_orange == 0 then

							choice_value.up = choice_value.up + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_orange = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_orange == 0 then

							choice_value.right = choice_value.right + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_orange = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_orange == 0 then

							choice_value.down = choice_value.down + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_orange = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_orange == 0 then

							choice_value.left = choice_value.left + (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = orange_ghost.x
							--value_text.y[#value_text.y + 1] = orange_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (orange_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_orange = 1

						end

					end


					if pink_ghost.state == "normal" and pathfinder.x[i] == pink_ghost.x and pathfinder.y[i] == pink_ghost.y then

						if pathfinder.choice_affinity[i] == "up" and ghost_counted.up_pink == 0 then

							choice_value.up = choice_value.up + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "UG"
							ghost_counted.up_pink = 1

						elseif pathfinder.choice_affinity[i] == "right" and ghost_counted.right_pink == 0 then

							choice_value.right = choice_value.right + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "RG"
							ghost_counted.right_pink = 1

						elseif pathfinder.choice_affinity[i] == "down" and ghost_counted.down_pink == 0 then

							choice_value.down = choice_value.down + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "DG"
							ghost_counted.down_pink = 1

						elseif pathfinder.choice_affinity[i] == "left" and ghost_counted.left_pink == 0 then

							choice_value.left = choice_value.left + (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.x[#value_text.x + 1] = pink_ghost.x
							--value_text.y[#value_text.y + 1] = pink_ghost.y
							--value_text.v[#value_text.v + 1] = math.ceil (pink_ghost_val() / (pathfinder.distance_traveled[i] ^ 2))
							--value_text.type[#value_text.type + 1] = "LG"
							ghost_counted.left_pink = 1

						end

					end

				end

			end
			--

			--[[
			do -- super Pellet detection

				for a = 1, #super_pellet.x do

					if super_pellet.available[a] == 1 and (pathfinder.x[i] + 232) == super_pellet.x[a] and (pathfinder.y[i] + 24) == super_pellet.y[a] then

						if namcap.super > 1 then

							pathfinder.p_val_reduct[i] = 0

							if pathfinder.choice_affinity[i] == "up" and super_pellet_counted.up[a] == 0 then
								choice_value.up = choice_value.up - 1000
								value_text.type[#value_text.type + 1] = "US"
								super_pellet_counted.up[a] = 1
							end

							if pathfinder.choice_affinity[i] == "right" and super_pellet_counted.right[a] == 0 then
								choice_value.right = choice_value.right - 1000
								value_text.type[#value_text.type + 1] = "RS"
								super_pellet_counted.right[a] = 1
							end

							if pathfinder.choice_affinity[i] == "down" and super_pellet_counted.down[a] == 0 then
								choice_value.down = choice_value.down - 1000
								value_text.type[#value_text.type + 1] = "DS"
								super_pellet_counted.down[a] = 1
							end

							if pathfinder.choice_affinity[i] == "left" and super_pellet_counted.left[a] == 0 then
								choice_value.left = choice_value.left - 1000
								value_text.type[#value_text.type + 1] = "LS"
								super_pellet_counted.left[a] = 1
							end

							value_text.x[#value_text.x + 1] = super_pellet.x[a]
							value_text.y[#value_text.y + 1] = super_pellet.y[a]
							value_text.v[#value_text.v + 1] = -1000

						else

							-- calculate threat level and how close you are to the end of the game.
							-- The higher the threat level, the more valuable the super pellet itself is and the more namcap can "see" pellets on the other side of the super pellet.
							-- The closer to the end of the game, the more namcap can "see" pellets on the other side of the super pellet.









						end










						if pathfinder.choice_affinity[i] == "up" and super_pellet_counted.up[a] == 0 then



						end

						if pathfinder.choice_affinity[i] == "right" and super_pellet_counted.right[a] == 0 then



						end

						if pathfinder.choice_affinity[i] == "down" and super_pellet_counted.down[a] == 0 then



						end

						if pathfinder.choice_affinity[i] == "left" and super_pellet_counted.left[a] == 0 then



						end
					end


				end
			end










			do -- super pellet detection

				for a = 1, #super_pellet.x do

					if super_pellet.available[a] == 1 and (pathfinder.x[i] + 232) == super_pellet.x[a] and (pathfinder.y[i] + 24) == super_pellet.y[a] then

						if pathfinder.choice_affinity[i] == "up" and super_pellet_counted.up[a] == 0 then

							local super_pellet_value = -8000000

							if namcap.super <= 1 then

								local red_closeness = ((math.abs(namcap.x - red_ghost.x) + math.abs(namcap.y - red_ghost.y)) * 1.2)
								local blue_closeness = ((math.abs(namcap.x - blue_ghost.x) + math.abs(namcap.y - blue_ghost.y)) * 1.2)
								local orange_closeness = ((math.abs(namcap.x - orange_ghost.x) + math.abs(namcap.y - orange_ghost.y)) * 1.2)
								local pink_closeness = ((math.abs(namcap.x - pink_ghost.x) + math.abs(namcap.y - pink_ghost.y)) * 1.2)

								if red_ghost.state ~= "normal" and red_ghost.state ~= "exit" then red_closeness = 500 end
								if blue_ghost.state ~= "normal" and blue_ghost.state ~= "exit" then blue_closeness = 500 end
								if orange_ghost.state ~= "normal" and orange_ghost.state ~= "exit" then orange_closeness = 500 end
								if pink_ghost.state ~= "normal" and pink_ghost.state ~= "exit" then pink_closeness = 500 end

								if red_closeness <= 200 then super_pellet_value = super_pellet_value + 3500000 end
								if blue_closeness <= 200 then super_pellet_value = super_pellet_value + 3500000 end
								if orange_closeness <= 200 then super_pellet_value = super_pellet_value + 3500000 end
								if pink_closeness <= 200 then super_pellet_value = super_pellet_value + 3500000 end

								if red_closeness <= 100 then super_pellet_value = super_pellet_value + 3500000 end
								if blue_closeness <= 100 then super_pellet_value = super_pellet_value + 3500000 end
								if orange_closeness <= 100 then super_pellet_value = super_pellet_value + 3500000 end
								if pink_closeness <= 100 then super_pellet_value = super_pellet_value + 3500000 end

								if red_closeness <= 50 then super_pellet_value = super_pellet_value + 3500000 end
								if blue_closeness <= 50 then super_pellet_value = super_pellet_value + 3500000 end
								if orange_closeness <= 50 then super_pellet_value = super_pellet_value + 3500000 end
								if pink_closeness <= 50 then super_pellet_value = super_pellet_value + 3500000 end

								if red_closeness <= 25 then super_pellet_value = super_pellet_value + 3500000 end
								if blue_closeness <= 25 then super_pellet_value = super_pellet_value + 3500000 end
								if orange_closeness <= 25 then super_pellet_value = super_pellet_value + 3500000 end
								if pink_closeness <= 25 then super_pellet_value = super_pellet_value + 3500000 end


								choice_value.up = choice_value.up + (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8))
								value_text.x[#value_text.x + 1] = super_pellet.x[a]
								value_text.y[#value_text.y + 1] = super_pellet.y[a]
								value_text.v[#value_text.v + 1] = math.ceil (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8))
								value_text.type[#value_text.type + 1] = "US"
								super_pellet_counted.up[a] = 1

							end

							if super_pellet_value < 0 then super_pellet_long_range_avoidence.up = ((super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8)) ^ 2) end

						elseif pathfinder.choice_affinity[i] == "right" and super_pellet_counted.right[a] == 0 then

							local super_pellet_value = -5000

							if namcap.super <= 1 then

								local red_closeness = ((math.abs(namcap.x - red_ghost.x) + math.abs(namcap.y - red_ghost.y)) * 1.2)
								local blue_closeness = ((math.abs(namcap.x - blue_ghost.x) + math.abs(namcap.y - blue_ghost.y)) * 1.2)
								local orange_closeness = ((math.abs(namcap.x - orange_ghost.x) + math.abs(namcap.y - orange_ghost.y)) * 1.2)
								local pink_closeness = ((math.abs(namcap.x - pink_ghost.x) + math.abs(namcap.y - pink_ghost.y)) * 1.2)

								if red_ghost.state ~= "normal" and red_ghost.state ~= "exit" then red_closeness = 500 end
								if blue_ghost.state ~= "normal" and blue_ghost.state ~= "exit" then blue_closeness = 500 end
								if orange_ghost.state ~= "normal" and orange_ghost.state ~= "exit" then orange_closeness = 500 end
								if pink_ghost.state ~= "normal" and pink_ghost.state ~= "exit" then pink_closeness = 500 end

								if red_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 200 then super_pellet_value = super_pellet_value + 2000000 end

								if red_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end

							end

							choice_value.right = choice_value.right + (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.x[#value_text.x + 1] = super_pellet.x[a]
							value_text.y[#value_text.y + 1] = super_pellet.y[a]
							value_text.v[#value_text.v + 1] = math.ceil (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.type[#value_text.type + 1] = "RS"

							super_pellet_counted.right[a] = 1

							if super_pellet_value < 0 then super_pellet_long_range_avoidence.right = ((super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8)) ^ 2) end

						elseif pathfinder.choice_affinity[i] == "down" and super_pellet_counted.down[a] == 0  then

							local super_pellet_value = -5000

							if namcap.super <= 1 then

							local red_closeness = ((math.abs(namcap.x - red_ghost.x) + math.abs(namcap.y - red_ghost.y)) * 1.2)
							local blue_closeness = ((math.abs(namcap.x - blue_ghost.x) + math.abs(namcap.y - blue_ghost.y)) * 1.2)
							local orange_closeness = ((math.abs(namcap.x - orange_ghost.x) + math.abs(namcap.y - orange_ghost.y)) * 1.2)
							local pink_closeness = ((math.abs(namcap.x - pink_ghost.x) + math.abs(namcap.y - pink_ghost.y)) * 1.2)

								if red_ghost.state ~= "normal" and red_ghost.state ~= "exit" then red_closeness = 500 end
								if blue_ghost.state ~= "normal" and blue_ghost.state ~= "exit" then blue_closeness = 500 end
								if orange_ghost.state ~= "normal" and orange_ghost.state ~= "exit" then orange_closeness = 500 end
								if pink_ghost.state ~= "normal" and pink_ghost.state ~= "exit" then pink_closeness = 500 end

								if red_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 200 then super_pellet_value = super_pellet_value + 2000000 end

								if red_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end

							end

							choice_value.down = choice_value.down + (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.x[#value_text.x + 1] = super_pellet.x[a]
							value_text.y[#value_text.y + 1] = super_pellet.y[a]
							value_text.v[#value_text.v + 1] = math.ceil (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.type[#value_text.type + 1] = "DS"

							super_pellet_counted.down[a] = 1

							if super_pellet_value < 0 then super_pellet_long_range_avoidence.down = ((super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8)) ^ 2) end

						elseif pathfinder.choice_affinity[i] == "left" and super_pellet_counted.left[a] == 0  then

							local super_pellet_value = -5000

							if namcap.super <= 1 then

								local red_closeness = ((math.abs(namcap.x - red_ghost.x) + math.abs(namcap.y - red_ghost.y)) * 1.2)
								local blue_closeness = ((math.abs(namcap.x - blue_ghost.x) + math.abs(namcap.y - blue_ghost.y)) * 1.2)
								local orange_closeness = ((math.abs(namcap.x - orange_ghost.x) + math.abs(namcap.y - orange_ghost.y)) * 1.2)
								local pink_closeness = ((math.abs(namcap.x - pink_ghost.x) + math.abs(namcap.y - pink_ghost.y)) * 1.2)

								if red_ghost.state ~= "normal" and red_ghost.state ~= "exit" then red_closeness = 500 end
								if blue_ghost.state ~= "normal" and blue_ghost.state ~= "exit" then blue_closeness = 500 end
								if orange_ghost.state ~= "normal" and orange_ghost.state ~= "exit" then orange_closeness = 500 end
								if pink_ghost.state ~= "normal" and pink_ghost.state ~= "exit" then pink_closeness = 500 end

								if red_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 200 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 200 then super_pellet_value = super_pellet_value + 2000000 end

								if red_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 100 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 50 then super_pellet_value = super_pellet_value + 3000000 end

								if red_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if blue_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if orange_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end
								if pink_closeness <= 25 then super_pellet_value = super_pellet_value + 3000000 end

							end

							choice_value.left = choice_value.left + (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.x[#value_text.x + 1] = super_pellet.x[a]
							value_text.y[#value_text.y + 1] = super_pellet.y[a]
							value_text.v[#value_text.v + 1] = math.ceil (super_pellet_value / (pathfinder.distance_traveled[i] ^ 1))
							value_text.type[#value_text.type + 1] = "LS"

							super_pellet_counted.left[a] = 1

							if super_pellet_value < 0 then super_pellet_long_range_avoidence.left = ((super_pellet_value / (pathfinder.distance_traveled[i] ^ 1.8)) ^ 2) end

						end

					end

				end

			end

			]]





			if pathfinder.split_already[i] == 0 then

				for a = 1, #node.x do-- check for nodes and pellets

					if pathfinder.x[i] == node.x[a] and pathfinder.y[i] == node.y[a] then

						if node.pellet[a] == 1 then

							if pathfinder.p_val_reduct[i] ~= 0 then
								short_range_successful = 1
								p_count = p_count + ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))
							end

							if pathfinder.choice_affinity[i] == "up" then
								choice_value.up = choice_value.up + ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.type[#value_text.type + 1] = "UP"
							elseif pathfinder.choice_affinity[i] == "right" then
								choice_value.right = choice_value.right + ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.type[#value_text.type + 1] = "RP"
							elseif pathfinder.choice_affinity[i] == "down" then
								choice_value.down = choice_value.down + ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.type[#value_text.type + 1] = "DP"
							elseif pathfinder.choice_affinity[i] == "left" then
								choice_value.left = choice_value.left + ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))
								--value_text.type[#value_text.type + 1] = "LP"
							end

							--value_text.x[#value_text.x + 1] = node.x[a]
							--value_text.y[#value_text.y + 1] = node.y[a]
							--value_text.v[#value_text.v + 1] = math.ceil ((pellet_value * pathfinder.p_val_reduct[i]) / (pathfinder.distance_traveled[i] ^ 2))


						end

						if node.type[a] == "c" or node.type[a] == "tu" or node.type[a] == "tr" or node.type[a] == "td" or node.type[a] == "tl" then

							if pathfinder.choice_affinity[i] == "up" then

								if choice_node.up_x == nil then
									choice_node.up_x = node.x[a]
									choice_node.up_y = node.y[a]
								end

							elseif pathfinder.choice_affinity[i] == "right" then

								if choice_node.right_x == nil then
									choice_node.right_x = node.x[a]
									choice_node.right_y = node.y[a]
								end

							elseif pathfinder.choice_affinity[i] == "down" then

								if choice_node.down_x == nil then
									choice_node.down_x = node.x[a]
									choice_node.down_y = node.y[a]
								end

							elseif pathfinder.choice_affinity[i] == "left" then

								if choice_node.left_x == nil then
									choice_node.left_x = node.x[a]
									choice_node.left_y = node.y[a]
								end

							end

						end


						if node.type[a] == "c" then

							for b = 1, 2 do
								pathfinder.x[#pathfinder.x + 1] = pathfinder.x[i]
								pathfinder.y[#pathfinder.y + 1] = pathfinder.y[i]
								pathfinder.p_val_reduct[#pathfinder.p_val_reduct + 1] = pathfinder.p_val_reduct[i]
							end

							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]
							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]

							if pathfinder.direction[i] == "up" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							elseif pathfinder.direction[i] == "right" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							elseif pathfinder.direction[i] == "down" then
								pathfinder.direction[i] = "down"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							elseif pathfinder.direction[i] == "left" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							end

							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]


						elseif node.type[a] == "tu" then


							pathfinder.x[#pathfinder.x + 1] = pathfinder.x[i]
							pathfinder.y[#pathfinder.y + 1] = pathfinder.y[i]
							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]
							pathfinder.p_val_reduct[#pathfinder.p_val_reduct + 1] = pathfinder.p_val_reduct[i]

							if pathfinder.direction[i] == "down" then
								pathfinder.direction[i] = "right"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
							elseif pathfinder.direction[i] == "left" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
							elseif pathfinder.direction[i] == "right" then
								pathfinder.direction[i] = "right"
								pathfinder.direction[#pathfinder.direction + 1] = "up"
							end

							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]

						elseif node.type[a] == "tr" then


							pathfinder.x[#pathfinder.x + 1] = pathfinder.x[i]
							pathfinder.y[#pathfinder.y + 1] = pathfinder.y[i]
							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]
							pathfinder.p_val_reduct[#pathfinder.p_val_reduct + 1] = pathfinder.p_val_reduct[i]

							if pathfinder.direction[i] == "up" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							elseif pathfinder.direction[i] == "left" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							elseif pathfinder.direction[i] == "down" then
								pathfinder.direction[i] = "down"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							end

							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]

						elseif node.type[a] == "td" then

							pathfinder.x[#pathfinder.x + 1] = pathfinder.x[i]
							pathfinder.y[#pathfinder.y + 1] = pathfinder.y[i]
							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]
							pathfinder.p_val_reduct[#pathfinder.p_val_reduct + 1] = pathfinder.p_val_reduct[i]

							if pathfinder.direction[i] == "up" then
								pathfinder.direction[i] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "right"
							elseif pathfinder.direction[i] == "right" then
								pathfinder.direction[i] = "right"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							elseif pathfinder.direction[i] == "left" then
								pathfinder.direction[i] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							end

							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]

						elseif node.type[a] == "tl" then

							pathfinder.x[#pathfinder.x + 1] = pathfinder.x[i]
							pathfinder.y[#pathfinder.y + 1] = pathfinder.y[i]
							pathfinder.choice_affinity[#pathfinder.choice_affinity + 1] = pathfinder.choice_affinity[i]
							pathfinder.p_val_reduct[#pathfinder.p_val_reduct + 1] = pathfinder.p_val_reduct[i]

							if pathfinder.direction[i] == "down" then
								pathfinder.direction[i] = "left"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							elseif pathfinder.direction[i] == "up" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "left"
							elseif pathfinder.direction[i] == "right" then
								pathfinder.direction[i] = "up"
								pathfinder.direction[#pathfinder.direction + 1] = "down"
							end

							pathfinder.split_already[#pathfinder.split_already + 1] = 1
							pathfinder.distance_traveled[#pathfinder.distance_traveled + 1] = pathfinder.distance_traveled[i]

						elseif node.type[a] == "ru" then
							if pathfinder.direction[i] == "left" then pathfinder.direction[i] = "up"
							elseif pathfinder.direction[i] == "down" then pathfinder.direction[i] = "right"
							end

						elseif node.type[a] == "rd" then
							if pathfinder.direction[i] == "left" then pathfinder.direction[i] = "down"
							elseif pathfinder.direction[i] == "up" then pathfinder.direction[i] = "right"
							end

						elseif node.type[a] == "lu" then
							if pathfinder.direction[i] == "right" then pathfinder.direction[i] = "up"
							elseif pathfinder.direction[i] == "down" then pathfinder.direction[i] = "left"
							end

						elseif node.type[a] == "ld" then
							if pathfinder.direction[i] == "right" then pathfinder.direction[i] = "down"
							elseif pathfinder.direction[i] == "up" then pathfinder.direction[i] = "left"
							end
						end

						break

					end

				end

			end

			if pathfinder.direction[i] == "up" then
				pathfinder.y[i] = pathfinder.y[i] - 1
			elseif pathfinder.direction[i] == "right" then
				pathfinder.x[i] = pathfinder.x[i] + 1
			elseif pathfinder.direction[i] == "down" then
				pathfinder.y[i] = pathfinder.y[i] + 1
			elseif pathfinder.direction[i] == "left" then
				pathfinder.x[i] = pathfinder.x[i] -1
			end

			-- increase distance travelled
			pathfinder.distance_traveled[i] = pathfinder.distance_traveled[i] + 1

			-- Label this bot as ready to split again if necessary
			pathfinder.split_already[i] = 0

		end
	end


	if short_range_successful == 0 then

		for i = 1, #node.x do

			if node.pellet[i] == 1 then

				if choice_node.up_x ~= nil and choice_value.up > -9999999999 then

					choice_value.up = choice_value.up + (pellet_value / ((math.abs(node.x[i] - choice_node.up_x))^2 + (math.abs(node.y[i] - choice_node.up_y))^2))
					p_count = p_count + (pellet_value / ((math.abs(node.x[i] - choice_node.up_x))^2 + (math.abs(node.y[i] - choice_node.up_y))^2))

					--value_text.x[#value_text.x + 1] = node.x[i]
					--value_text.y[#value_text.y + 1] = node.y[i]
					--value_text.v[#value_text.v + 1] = math.ceil (pellet_value / ((math.abs(node.x[i] - choice_node.up_x))^2 + (math.abs(node.y[i] - choice_node.up_y))^2))
					--value_text.type[#value_text.type + 1] = "UL"

				end

				if choice_node.right_x ~= nil and choice_value.right > -9999999999 then

					choice_value.right = choice_value.right + (pellet_value / ((math.abs(node.x[i] - choice_node.right_x))^2 + (math.abs(node.y[i] - choice_node.right_y))^2))
					p_count = p_count + (pellet_value / ((math.abs(node.x[i] - choice_node.right_x))^2 + (math.abs(node.y[i] - choice_node.right_y))^2))

					--value_text.x[#value_text.x + 1] = node.x[i]
					--value_text.y[#value_text.y + 1] = node.y[i]
					--value_text.v[#value_text.v + 1] = math.ceil (pellet_value / ((math.abs(node.x[i] - choice_node.right_x))^2 + (math.abs(node.y[i] - choice_node.right_y))^2))
					--value_text.type[#value_text.type + 1] = "RL"

				end

				if choice_node.down_x ~= nil and choice_value.down > -9999999999 then

					choice_value.down = choice_value.down + (pellet_value / ((math.abs(node.x[i] - choice_node.down_x))^2 + (math.abs(node.y[i] - choice_node.down_y))^2))
					p_count = p_count + (pellet_value / ((math.abs(node.x[i] - choice_node.down_x))^2 + (math.abs(node.y[i] - choice_node.down_y))^2))

					--value_text.x[#value_text.x + 1] = node.x[i]
					--value_text.y[#value_text.y + 1] = node.y[i]
					--value_text.v[#value_text.v + 1] = math.ceil (pellet_value / ((math.abs(node.x[i] - choice_node.down_x))^2 + (math.abs(node.y[i] - choice_node.down_y))^2))
					--value_text.type[#value_text.type + 1] = "DL"

				end

				if choice_node.left_x ~= nil and choice_value.left > -9999999999 then

					choice_value.left = choice_value.left + (pellet_value / ((math.abs(node.x[i] - choice_node.left_x))^2 + (math.abs(node.y[i] - choice_node.left_y))^2))
					p_count = p_count + (pellet_value / ((math.abs(node.x[i] - choice_node.left_x))^2 + (math.abs(node.y[i] - choice_node.left_y))^2))

					--value_text.x[#value_text.x + 1] = node.x[i]
					--value_text.y[#value_text.y + 1] = node.y[i]
					--value_text.v[#value_text.v + 1] = math.ceil (pellet_value / ((math.abs(node.x[i] - choice_node.left_x))^2 + (math.abs(node.y[i] - choice_node.left_y))^2))
					--value_text.type[#value_text.type + 1] = "LL"

				end

			end

		end


		--[[ temporarily

		-- Let Super Pellets influence long-range pull and push

		if red_ghost.state == "normal" or red_ghost.state == "exit" then super_pellet_influence = super_pellet_influence + 1 end
		if blue_ghost.state == "normal" or blue_ghost.state == "exit" then super_pellet_influence = super_pellet_influence + 1 end
		if orange_ghost.state == "normal" or orange_ghost.state == "exit" then super_pellet_influence = super_pellet_influence + 1 end
		if pink_ghost.state == "normal" or pink_ghost.state == "exit" then super_pellet_influence = super_pellet_influence + 1 end

		super_pellet_long_range_value = 80 ^ super_pellet_influence

		for i = 1, 4 do

			if super_pellet.available[i] == 1 then

				if super_pellet_counted.up[i] == 0 and super_pellet_counted.right[i] == 0 and super_pellet_counted.down[i] == 0 and super_pellet_counted.left[i] == 0 then

					if choice_node.up_x ~= nil and choice_value.up > -9999999999 then

						choice_value.up = choice_value.up + (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.up_x) + math.abs(super_pellet.y[i] - choice_node.up_y)) ^ 2))

						value_text.x[#value_text.x + 1] = super_pellet.x[i]
						value_text.y[#value_text.y + 1] = super_pellet.y[i]
						value_text.v[#value_text.v + 1] = math.ceil (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.up_x) + math.abs(super_pellet.y[i] - choice_node.up_y)) ^ 2))
						value_text.type[#value_text.type + 1] = "US"

					end

					if choice_node.right_x ~= nil and choice_value.right > -9999999999 then

						choice_value.right = choice_value.right + (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.right_x) + math.abs(super_pellet.y[i] - choice_node.right_y)) ^ 2))

						value_text.x[#value_text.x + 1] = super_pellet.x[i]
						value_text.y[#value_text.y + 1] = super_pellet.y[i]
						value_text.v[#value_text.v + 1] = math.ceil (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.right_x) + math.abs(super_pellet.y[i] - choice_node.right_y)) ^ 2))
						value_text.type[#value_text.type + 1] = "RS"

					end

					if choice_node.down_x ~= nil and choice_value.down > -9999999999 then

						choice_value.down = choice_value.down + (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.down_x) + math.abs(super_pellet.y[i] - choice_node.down_y)) ^ 2))

						value_text.x[#value_text.x + 1] = super_pellet.x[i]
						value_text.y[#value_text.y + 1] = super_pellet.y[i]
						value_text.v[#value_text.v + 1] = math.ceil (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.down_x) + math.abs(super_pellet.y[i] - choice_node.down_y)) ^ 2))
						value_text.type[#value_text.type + 1] = "DS"

					end

					if choice_node.left_x ~= nil and choice_value.left > -9999999999 then

						choice_value.left = choice_value.left + (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.left_x) + math.abs(super_pellet.y[i] - choice_node.left_y)) ^ 2))

						value_text.x[#value_text.x + 1] = super_pellet.x[i]
						value_text.y[#value_text.y + 1] = super_pellet.y[i]
						value_text.v[#value_text.v + 1] = math.ceil (super_pellet_long_range_value / ((math.abs(super_pellet.x[i] - choice_node.left_x) + math.abs(super_pellet.y[i] - choice_node.left_y)) ^ 2))
						value_text.type[#value_text.type + 1] = "LS"

					end
				end
			end
		end

		if super_pellet_long_range_avoidence.up > 0 then choice_value.up = choice_value.up - super_pellet_long_range_avoidence.up end
		if super_pellet_long_range_avoidence.right > 0 then choice_value.right = choice_value.right - super_pellet_long_range_avoidence.right end
		if super_pellet_long_range_avoidence.down > 0 then choice_value.down = choice_value.down - super_pellet_long_range_avoidence.down end
		if super_pellet_long_range_avoidence.left > 0 then choice_value.left = choice_value.left - super_pellet_long_range_avoidence.left end


		]]




	end


	do -- negative value to positive value ratio control


		g_count.total = g_count.up + g_count.right + g_count.down + g_count.left

		modifier = 0

		if p_count < 3000 then
			modifier = modifier + .25
		end

		if p_count < 2000 then
			modifier = modifier + .25
		end

		if p_count < 1000 then
			modifier = modifier + .25
		end

		choice_value.up = choice_value.up + (g_count.up * modifier)
		choice_value.right = choice_value.right + (g_count.right * modifier)
		choice_value.down = choice_value.down + (g_count.down * modifier)
		choice_value.left = choice_value.left + (g_count.left * modifier)


	end

	--[[
	up_value = choice_value.up
	right_value = choice_value.right
	down_value = choice_value.down
	left_value = choice_value.left
	]]




	if choice_value.left >= choice_value.up and choice_value.left >= choice_value.down and choice_value.left >= choice_value.right then
		return "left"
	elseif choice_value.down >= choice_value.up and choice_value.down >= choice_value.right and choice_value.down >= choice_value.left then
		return "down"
	elseif choice_value.right >= choice_value.up and choice_value.right >= choice_value.down and choice_value.right >= choice_value.left then
		return "right"
	elseif choice_value.up >= choice_value.right and choice_value.up >= choice_value.down and choice_value.up >= choice_value.left then
		return "up"
	end

end












function collision_detect()

	if red_ghost.state == "normal" then
		if namcap.x >= (red_ghost.x - 10) and namcap.x <= (red_ghost.x + 10) and namcap.y >= (red_ghost.y - 10) and namcap.y <= (red_ghost.y + 10) then
			if namcap.super > 0 then
				red_ghost.state = "dead"
				sfx.punch:play()
				sfx.scared:play()
				if ghost.selected == "red" then ghost.selected = "" end
				red_ghost.goal_x = 512
				red_ghost.goal_y = 314
			else
				game_state = "level cleared"
				sfx.prison:play()
				music_state = "fade out"
				next_music = lvl_cleared_music

			end
		end
	end

	if blue_ghost.state == "normal" then
		if namcap.x >= (blue_ghost.x - 10) and namcap.x <= (blue_ghost.x + 10) and namcap.y >= (blue_ghost.y - 10) and namcap.y <= (blue_ghost.y + 10) then
			if namcap.super > 0 then
				blue_ghost.state = "dead"
				sfx.punch:play()
				sfx.scared:play()
				if ghost.selected == "blue" then ghost.selected = "" end
				blue_ghost.goal_x = 512
				blue_ghost.goal_y = 314
			else
				game_state = "level cleared"
				sfx.prison:play()
				music_state = "fade out"
				next_music = lvl_cleared_music
			end
		end
	end

	if orange_ghost.state == "normal" then
		if namcap.x >= (orange_ghost.x - 10) and namcap.x <= (orange_ghost.x + 10) and namcap.y >= (orange_ghost.y - 10) and namcap.y <= (orange_ghost.y + 10) then
			if namcap.super > 0 then
				orange_ghost.state = "dead"
				sfx.punch:play()
				sfx.scared:play()
				if ghost.selected == "orange" then ghost.selected = "" end
				orange_ghost.goal_x = 512
				orange_ghost.goal_y = 314
			else
				game_state = "level cleared"
				sfx.prison:play()
				music_state = "fade out"
				next_music = lvl_cleared_music
			end
		end
	end

	if pink_ghost.state == "normal" then
		if namcap.x >= (pink_ghost.x - 10) and namcap.x <= (pink_ghost.x + 10) and namcap.y >= (pink_ghost.y - 10) and namcap.y <= (pink_ghost.y + 10) then
			if namcap.super > 0 then
				pink_ghost.state = "dead"
				sfx.punch:play()
				sfx.scared:play()
				if ghost.selected == "pink" then ghost.selected = "" end
				pink_ghost.goal_x = 512
				pink_ghost.goal_y = 314
			else
				game_state = "level cleared"
				sfx.prison:play()
				music_state = "fade out"
				next_music = lvl_cleared_music
			end
		end
	end

	if red_ghost.state == "dead" and red_ghost.x == 280 and red_ghost.y == 290 then
		red_ghost.state = "enter"
		red_ghost.goal_x = ""
		red_ghost.goal_y = ""
	end

	if blue_ghost.state == "dead" and blue_ghost.x == 280 and blue_ghost.y == 290 then
		blue_ghost.state = "enter"
		blue_ghost.goal_x = ""
		blue_ghost.goal_y = ""
	end

	if orange_ghost.state == "dead" and orange_ghost.x == 280 and orange_ghost.y == 290 then
		orange_ghost.state = "enter"
		orange_ghost.goal_x = ""
		orange_ghost.goal_y = ""
	end


	if pink_ghost.state == "dead" and pink_ghost.x == 280 and pink_ghost.y == 290 then
		pink_ghost.state = "enter"
		pink_ghost.goal_x = ""
		pink_ghost.goal_y = ""
	end

end
--
function scroller_machine(which, x, scroll_length)

	x = x - (100 * delta_time)

	for i = 1, 3 do
		if scroller_slot.available[i] == which then
			y = scroller_slot.y[i]
		end
	end

	if x <= (-50 - scroll_length) then
		x = 1050

		for i = 1, 3 do
			if scroller_slot.available[i] == which then
				scroller_slot.available[i] = "yes"
			elseif scroller_slot.available[i] == "yes" then
				scroller_slot.available[i] = which
				y = scroller_slot.y[i]
			end
		end

	end

	return x, y
end
--
function slate_wipe()

	for i = 1, 64 do
		node.pellet[i] = 1
	end

	for i = 1, 4 do
		super_pellet.available[i] = 1
	end

	namcap.animation_timer = 0
	namcap.capture_animation_timer = 0
	namcap.prison_frame = 1
	namcap.direction = "right"
	namcap.rotation_degree = 0
	namcap.x = 280
	namcap.y = 530
	namcap.speed = 55 -- press "p" to unpause
	namcap.leftover_distance = 0
	namcap.super = 0
	namcap.ai_pix_counter = 0
	namcap.goal_x = 0
	namcap.goal_y = 0
	namcap.pause_super = 0
	namcap.frame = 4

	ghost.selection_animation_timer = 0
	ghost.frame = 1
	ghost.speed = 70
	ghost.leftover_distance = 0
	ghost.enter_exit_leftovers = 0
	ghost.selected = ""
	ghost.max_prison_time = 8
	red_ghost.x = 280
	red_ghost.y = 290
	red_ghost.direction = "left"
	red_ghost.state = "initial"
	red_ghost.goal_x = ""
	red_ghost.goal_y = ""
	red_ghost.prison_time = 0
	blue_ghost.x = 240
	blue_ghost.y = 350
	blue_ghost.direction = "up"
	blue_ghost.state = "initial"
	blue_ghost.goal_x = ""
	blue_ghost.goal_y = ""
	blue_ghost.prison_time = 0
	orange_ghost.x = 320
	orange_ghost.y = 350
	orange_ghost.direction = "up"
	orange_ghost.state = "initial"
	orange_ghost.goal_x = ""
	orange_ghost.goal_y = ""
	orange_ghost.prison_time = 0
	pink_ghost.x = 280
	pink_ghost.y = 350
	pink_ghost.direction = "down"
	pink_ghost.state = "initial"
	pink_ghost.goal_x = ""
	pink_ghost.goal_y = ""
	pink_ghost.prison_time = 0

	eaten_pellets = 0

	level = 1
	score = 0
	possible_score = 64 + 3
	ready_sign_flash = 0
	ready_sign_hourglass = 0
	beep_counter = 0
	mouse_click_x = "N/A"
	mouse_click_y = "N/A"
	level_clear_timer = 0

	--[[
	scroller_slot.available[1] = "scores"
	scroller_slot.available[2] = "credits"
	scroller_slot.available[3] = "yes"
	scroller_slot.y[1] = 50
	scroller_slot.y[2] = 475
	scroller_slot.y[3] = 725
	score_scroller_x_var = 1300
	score_scroller_y_var = scroller_slot.y[1]
	credit_scroller_x_var = 1300
	credit_scroller_y_var = scroller_slot.y[2]
	]]

	save_name = ""

	do -- create score scrolly

		score_scrolly = " "

		for i = 1, 3 do
			if high_scores.names[i] == "nil" then
				break
			else

				if i == 1 then
					score_scrolly = score_scrolly .. "1st Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				elseif i == 2 then
					score_scrolly = score_scrolly .. "2nd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				elseif i == 3 then
					score_scrolly = score_scrolly .. "3rd Place - " .. high_scores.names[i] .. " : " .. high_scores.scores[i] .. "     "
				end
			end
		end

	end
	--

end
--
