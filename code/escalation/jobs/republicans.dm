//Ejercito Popular

/datum/job/escalation/popular
	title = "Ejercito Popular"
	enabled = 0
	faction_tag = "popular"
	military_faction = REPUBLICANS
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "REPUBLICANS"

/datum/job/escalation/popular/reppl
	title = "REP Lider de Compania"
	name = "Lider de Compania"
	english_name = "Company Commander"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/teniente
	selection_color = "#B22222"
	rank_number = 0
	position = "team"
	enabled = 1
	leading = 1
	amount = 1
	whitelist_rank = "sa_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 55, LANGUAGE_GERMAN = 15)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,5), 0, rand(0,1))

/*datum/job/escalation/popular/reppld
	title = "REP Asistente al Lider de Compania"
	name = "Asistente al Lider de Compania"
	english_name = "Company Commander Deputy"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/alferez
	selection_color = "#B22222"
	amount = 1
	rank_number = 1
	enabled = 1
	position = "team"
	whitelist_rank = "sa_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 35, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))*/

/datum/job/escalation/popular/repcc
	title = "REP Comisario de Compania"
	name = "Comisario de Compania"
	english_name = "Company Commissar"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/comisario
	selection_color = "#B22222"
	rank_number = 2
	position = "team"
	enabled = 1
	leading = 1
	amount = 1
	whitelist_rank = "sa_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 55, LANGUAGE_GERMAN = 15)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,5), 0, rand(0,1))

/datum/job/escalation/popular/reppd
	title = "REP Delegado Politico"
	name = "Delegado Politico"
	english_name = "Political Delegate"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/delegado
	selection_color = "#B22222"
	amount = 1
	rank_number = 3
	enabled = 1
	position = "team"
	whitelist_rank = "sa_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 35, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/popular/repsgt
	title = "REP Lider de Seccion"
	name = "Lider de Seccion"
	english_name = "Section Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/sargento
	selection_color = "#B22222"
	amount = 1
	rank_number = 4
	position = "team"
	enabled = 1
	whitelist_rank = "sa_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/popular/repmg
	title = "REP Ametrallador"
	name = "Ametrallador"
	english_name = "Company Machinegunner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/ametrallador
	selection_color = "#B22222"
	rank_number = 5
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "sa_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/popular/repmgasst
	title = "REP Asistente al Ametrallador"
	name = "Asistente al Ametrallador"
	english_name = "Company Machinegunner Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/asistenteametrallador
	selection_color = "#B22222"
	rank_number = 6
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "sa_enlisted"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/popular/repmessenger
	title = "REP Mensajero"
	name = "Mensajero"
	english_name = "Runner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/mensajero
	selection_color = "#B22222"
	amount = 1
	position = "team"
	enabled = 1
	rank_number = 7
	whitelist_rank = "sa_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/popular/repsurg
	title = "REP Cirujano"
	name = "Cirujano"
	english_name = "Field Surgeon"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/surgeon
	selection_color = "#B22222"
	rank_number = 8
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 85, LANGUAGE_GERMAN = 50)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(-1, 0), 0, 0, 13, rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/popular/repmed
	title = "REP Camillero"
	name = "Camillero"
	english_name = "Stretcher-bearer"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/camillero
	selection_color = "#B22222"
	rank_number = 9
	position = "team"
	amount = 3
	enabled = 1
	whitelist_rank = "sa_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(0,1), 0, 0, rand(2,3), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/popular/repsl
	title = "REP Lider de Peloton"
	name = "Lider de Peloton"
	english_name = "Platoon Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/cabo
	selection_color = "#B22222"
	rank_number = 4
	position = "fireteam"
	amount = 1
	leading = 1
	enabled = 1
	whitelist_rank = "sa_nco"
	also_known_languages = list(LANGUAGE_ENGLISH = 05, LANGUAGE_GERMAN = 1)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/popular/repfusilero
	title = "REP Fusilero"
	name = "Fusilero"
	english_name = "Rifleman"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/popular/soldado
	selection_color = "#B22222"
	rank_number = 5
	position = "fireteam"
	amount = 8
	enabled = 1
	whitelist_rank = "sa_enlisted"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))		

//For fixing the fireteams bug

/datum/job/escalation/debugger
	title = "ignore"
	enabled = 0
	faction_tag = "ignore"
	military_faction = REPUBLICANS
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "REPUBLICANS"
