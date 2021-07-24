//Ejercito Sublevado

/datum/job/escalation/nacional
	title = "Ejercito Nacional"
	enabled = 0
	faction_tag = "nacional"
	military_faction = NATIONALISTS
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "NATIONALISTS"

/datum/job/escalation/nacional/natpl
	title = "NAT Lider de Compania"
	name = "Lider de Compania"
	english_name = "Company Commander"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/teniente
	selection_color = "#4682B4"
	rank_number = 0
	position = "team"
	enabled = 1
	leading = 1
	amount = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 65, LANGUAGE_GERMAN = 25)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,5), 0, rand(0,1))

/datum/job/escalation/nacional/natpld
	title = "NAT Asistente al Lider de Compania"
	name = "Asistente al Lider de Compania"
	english_name = "Company Commander Deputy"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/alferez
	selection_color = "#4682B4"
	amount = 1
	rank_number = 1
	enabled = 1
	position = "team"
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 45, LANGUAGE_GERMAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natsgt
	title = "NAT Lider de Seccion"
	name = "Lider de Seccion"
	english_name = "Section Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/sargento
	selection_color = "#4682B4"
	amount = 1
	rank_number = 2
	position = "team"
	enabled = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/nacional/natmg
	title = "NAT Ametrallador"
	name = "Ametrallador"
	english_name = "Company Machinegunner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/ametrallador
	selection_color = "#4682B4"
	rank_number = 3
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "nco_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 5, LANGUAGE_GERMAN = 2)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natmgasst
	title = "NAT Asistente al Ametrallador"
	name = "Asistente al Ametrallador"
	english_name = "Company Machinegunner Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/asistenteametrallador
	selection_color = "#4682B4"
	rank_number = 4
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "enlisted_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natmessenger
	title = "NAT Mensajero"
	name = "Mensajero"
	english_name = "Runner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/mensajero
	selection_color = "#4682B4"
	amount = 1
	position = "team"
	enabled = 1
	rank_number = 5
	whitelist_rank = "enlisted_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natsurg
	title = "NAT Cirujano"
	name = "Cirujano"
	english_name = "Field Surgeon"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/surgeon
	selection_color = "#4682B4"
	rank_number = 6
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 85, LANGUAGE_GERMAN = 50)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(-1, 0), 0, 0, 13, rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/nacional/natmed
	title = "NAT Camillero"
	name = "Camillero"
	english_name = "Stretcher-bearer"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/camillero
	selection_color = "#4682B4"
	rank_number = 6
	position = "team"
	amount = 3
	enabled = 1
	whitelist_rank = "enlisted_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 35, LANGUAGE_GERMAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(0,1), 0, 0, rand(2,3), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natsl
	title = "NAT Lider de Peloton"
	name = "Lider de Peloton"
	english_name = "Platoon Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/cabo
	selection_color = "#4682B4"
	rank_number = 3
	position = "fireteam"
	amount = 1
	leading = 1
	enabled = 1
	whitelist_rank = "nco_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 05, LANGUAGE_GERMAN = 1)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/nacional/natslasst
	title = "NAT Asistente al Lider de Peloton"
	name = "Asistente al Lider de Peloton"
	english_name = "Platoon Leader Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/primera
	selection_color = "#4682B4"
	rank_number = 4
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "nco_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nacional/natfusilero
	title = "NAT Fusilero"
	name = "Fusilero"
	english_name = "Rifleman"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/nacional/soldado
	selection_color = "#4682B4"
	rank_number = 5
	position = "fireteam"
	amount = 7
	enabled = 1
	whitelist_rank = "enlisted_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))



/datum/job/escalation/legion
	title = "La Legion"
	enabled = 0
	faction_tag = "legion"
	military_faction = NATIONALISTS
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "NATIONALISTS"

/datum/job/escalation/legion/legpl
	title = "LEG Lider de Seccion"
	name = "Lider de Seccion"
	english_name = "Section Commander"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legpl
	selection_color = "#4682B4"
	rank_number = 0
	position = "team"
	enabled = 1
	leading = 1
	amount = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 65, LANGUAGE_GERMAN = 25)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,5), 0, rand(0,1))

/datum/job/escalation/legion/legpld
	title = "LEG Asistente al Lider de Seccion"
	name = "Asistente al Lider de Seccion"
	english_name = "Section Commander Deputy"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legpld
	selection_color = "#4682B4"
	amount = 1
	rank_number = 1
	enabled = 1
	position = "team"
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 45, LANGUAGE_GERMAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legsgt
	title = "LEG Lider de Peloton"
	name = "Lider de Peloton"
	english_name = "Platoon Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legsgt
	selection_color = "#4682B4"
	amount = 1
	rank_number = 2
	position = "team"
	enabled = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/legion/legmg
	title = "LEG Ametrallador"
	name = "Ametrallador"
	english_name = "Platoon Machinegunner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legmg
	selection_color = "#4682B4"
	rank_number = 3
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "nco_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 5, LANGUAGE_GERMAN = 2)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legmgasst
	title = "LEG Asistente al Ametrallador"
	name = "Asistente al Ametrallador"
	english_name = "Company Machinegunner Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legmgasst
	selection_color = "#4682B4"
	rank_number = 4
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "enlisted_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legflag
	title = "LEG Abanderado"
	name = "Abanderado"
	english_name = "Flag Bearer"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legflag
	selection_color = "#4682B4"
	amount = 1
	position = "team"
	enabled = 1
	rank_number = 5
	whitelist_rank = "nco_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 05, LANGUAGE_GERMAN = 1)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/legion/legmessenger
	title = "LEG Mensajero"
	name = "Mensajero"
	english_name = "Runner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legmessenger
	selection_color = "#4682B4"
	amount = 1
	position = "team"
	enabled = 1
	rank_number = 6
	whitelist_rank = "enlisted_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_GERMAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legsurg
	title = "LEG Cirujano"
	name = "Cirujano"
	english_name = "Field Surgeon"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legsurg
	selection_color = "#4682B4"
	rank_number = 7
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "officer_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 85, LANGUAGE_GERMAN = 50)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(-1, 0), 0, 0, 13, rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/legion/legmed
	title = "LEG Camillero"
	name = "Camillero"
	english_name = "Stretcher-bearer"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legmed
	selection_color = "#4682B4"
	rank_number = 8
	position = "team"
	amount = 3
	enabled = 1
	whitelist_rank = "enlisted_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 35, LANGUAGE_GERMAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(0,1), 0, 0, rand(2,3), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legsl
	title = "LEG Lider de Escuadra"
	name = "Lider de Escuadra"
	english_name = "Squad Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legsl
	selection_color = "#4682B4"
	rank_number = 3
	position = "fireteam"
	amount = 1
	leading = 1
	enabled = 1
	whitelist_rank = "nco_nat"
	also_known_languages = list(LANGUAGE_ENGLISH = 05, LANGUAGE_GERMAN = 1)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/legion/legslasst
	title = "LEG Asistente al Lider de Escuadra"
	name = "Asistente al Lider de Escuadra"
	english_name = "Squad Leader Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legslasst
	selection_color = "#4682B4"
	rank_number = 4
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "nco_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/legion/legfusilero
	title = "LEG Legionario"
	name = "Legionario"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/legion/legfusilero
	selection_color = "#4682B4"
	rank_number = 5
	position = "fireteam"
	amount = 7
	enabled = 1
	whitelist_rank = "enlisted_nat"

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/berber
	title = "Guias Bereber"
	enabled = 0
	faction_tag = "berber"
	military_faction = NATIONALISTS
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "NATIONALISTS"

/datum/job/escalation/berber/guidelead
	title = "ESP Jefe Bereber"
	name = "Jefe Bereber"
	english_name = "Berber Chief"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/moors/berber/chief
	selection_color = "#979989"
	amount = 1
	rank_number = 0
	position = "team"
	enabled = 1
	whitelist_rank = "nco_esp"
	also_known_languages = list(LANGUAGE_SPANISH = 100)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/berber/berberguide
	title = "ESP Bereber"
	name = "Bereber"
	english_name = "Berber"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/gce/moors/berber/guide
	selection_color = "#4682B4"
	rank_number = 5
	position = "team"
	amount = 3
	enabled = 1
	whitelist_rank = "enlisted_esp"
	also_known_languages = list(LANGUAGE_SPANISH = 25)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))