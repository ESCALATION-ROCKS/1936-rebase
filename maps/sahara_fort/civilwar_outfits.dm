
/decl/hierarchy/outfit/escalation
	name = "Escalation outfit"

/decl/hierarchy/outfit/escalation/nato

/decl/hierarchy/outfit/job/gce
	name = OUTFIT_JOB_NAME("Civilwar")
	uniform = null
	l_ear = null
	shoes = null
	pda_type = null
	pda_slot = null
	backpack = null
	satchel_one = null
	messenger_bag = null
	id = null
	satchel_two  = null
	satchel_black = null
	flags = null

//Ejercito Nacional

/decl/hierarchy/outfit/job/gce/nacional/teniente
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Teniente Nacional")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional/officer
	glasses = /obj/item/clothing/glasses/eyepatch
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/teniente/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/lt,
	/obj/item/clothing/under/gce/nacional/fatigues/breeches/lt = 4,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/lt,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/lt,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/lt,
	/obj/item/clothing/under/gce/nacional/fatigues/lt ))

/decl/hierarchy/outfit/job/gce/nacional/alferez
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Alferez Nacional")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional/officer
	left_pouch = null
	right_pouch = null
	back_pouch =null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/alferez/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/alf,
	/obj/item/clothing/under/gce/nacional/fatigues/breeches/alf = 3,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/alf,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/alf,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/alf,
	/obj/item/clothing/under/gce/nacional/fatigues/alf ))

/decl/hierarchy/outfit/job/gce/nacional/sargento
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Sargento Nacional")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = /obj/item/weapon/gun/projectile/automatic/rifle/naranjero
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/gce/naranjero/brown
	back_pouch =null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/sargento/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/sgt,
	/obj/item/clothing/under/gce/nacional/fatigues/breeches/sgt = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/sgt,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/sgt,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/sgt,
	/obj/item/clothing/under/gce/nacional/fatigues/sgt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 3,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 2,
	/obj/item/clothing/shoes/gce/zapatos,
	/obj/item/clothing/shoes/gce/alpargatas/tall ))

/decl/hierarchy/outfit/job/gce/nacional/mensajero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Mensajero Nacional")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/common
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/mensajero/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 2,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 1,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 5,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 4 ))

/decl/hierarchy/outfit/job/gce/nacional/surgeon
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cirujano Nacional")
	uniform = /obj/item/clothing/under/gce/traje/black
	shoes = /obj/item/clothing/shoes/gce/zapatos/negros
	holster = null
	back_2 = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = null

/decl/hierarchy/outfit/job/gce/nacional/camillero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Camillero Nacional")
	holster = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/camillero/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/camillero,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/camillero,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/camillero,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/camillero,
	/obj/item/clothing/under/gce/nacional/fatigues/camillero ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 3,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 1,
	/obj/item/clothing/shoes/gce/alpargatas = 2,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines = 1 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 2,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 3 ))

/decl/hierarchy/outfit/job/gce/nacional/cabo
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cabo Nacional")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/cabo/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/cpl,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/cpl,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/cpl,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/cpl,
	/obj/item/clothing/under/gce/nacional/fatigues/cpl ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 4,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 1,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 7,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/nacional/primera
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Soldado de Primera Nacional")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/primera/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/pfc ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines = 2,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 1,
	/obj/item/clothing/shoes/gce/alpargatas/short = 1 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 7,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/nacional/soldado
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Fusilero Nacional")
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/soldado/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 4,
	/obj/item/clothing/shoes/gce/alpargatas/short = 4 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 7,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/nacional/ametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Ametrallador Nacional")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/gce/macuto
	back = /obj/item/weapon/gun/projectile/automatic/rifle/hotchkiss1922
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/ametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/pfc,
	/obj/item/clothing/under/gce/nacional/fatigues/pfc ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 2,
	/obj/item/clothing/shoes/gce/zapatos = 3,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 2,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2 ))


/decl/hierarchy/outfit/job/gce/nacional/asistenteametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Asistente de Ametrallador Nacional")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/nacional/asistenteametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/grey/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/lkhaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/dgreen/pvt,
	/obj/item/clothing/under/gce/nacional/fatigues/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 4,
	/obj/item/clothing/shoes/gce/alpargatas/short = 4 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 7,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

//Ejercito Popular

/decl/hierarchy/outfit/job/gce/popular/teniente
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Teniente Popular")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/officer/popular
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/popular/teniente/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/lt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/lt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/lt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/lt,
	/obj/item/clothing/under/gce/popular/fatigues/green/lt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/lt ))

/decl/hierarchy/outfit/job/gce/popular/comisario
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Comisario")
	uniform = /obj/item/clothing/under/gce/popular/fatigues/commissar/alt/cc
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/officer/popular/commissar
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/popular/delegado
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Delegado Politico")
	uniform = /obj/item/clothing/under/gce/popular/fatigues/commissar/pd
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/officer/popular/commissar
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/popular/sargento
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Sargento Popular")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = /obj/item/weapon/gun/projectile/automatic/rifle/naranjero
	head = /obj/item/clothing/head/gce/garcap/popular
	left_pouch = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/gce/naranjero/brown
	back_pouch =null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown

/decl/hierarchy/outfit/job/gce/popular/sargento/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/sgt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/sgt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/sgt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/sgt,
	/obj/item/clothing/under/gce/popular/fatigues/green/sgt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/sgt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 3,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 2,
	/obj/item/clothing/shoes/gce/zapatos,
	/obj/item/clothing/shoes/gce/alpargatas/tall ))

/decl/hierarchy/outfit/job/gce/popular/mensajero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Mensajero Popular")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/common
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/mensajero/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/green/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 2,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 2,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin = 16,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield = 6,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 4 ))

/decl/hierarchy/outfit/job/gce/popular/surgeon
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cirujano Popular")
	shoes = /obj/item/clothing/shoes/gce/zapatos
	uniform = /obj/item/clothing/under/gce/traje/khaki
	holster = null
	back_2 = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = null

/decl/hierarchy/outfit/job/gce/popular/camillero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Camillero Popular")
	holster = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/camillero/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/camillero,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/camillero,
	/obj/item/clothing/under/gce/popular/fatigues/tan/camillero,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/camillero,
	/obj/item/clothing/under/gce/popular/fatigues/green/camillero,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/camillero ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 3,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 1,
	/obj/item/clothing/shoes/gce/alpargatas = 2,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines = 1 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin = 16,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield = 6,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/popular/cabo
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cabo Popular")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back_2 = /obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893
	back = null
	head = /obj/item/clothing/head/gce/garcap/popular
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/cabo/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/cpl,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/cpl,
	/obj/item/clothing/under/gce/popular/fatigues/tan/cpl,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/cpl,
	/obj/item/clothing/under/gce/popular/fatigues/green/cpl,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/cpl ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 4,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 1,
	/obj/item/clothing/shoes/gce/alpargatas/short = 2 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin = 16,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield = 6,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/popular/soldado
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Fusilero Popular")
	shoes = /obj/item/clothing/shoes/gce/alpargatas
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/popular
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/soldado/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/green/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 4,
	/obj/item/clothing/shoes/gce/alpargatas/short = 4 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin = 16,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield = 6,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/popular/ametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Ametrallador Popular")
	shoes = /obj/item/clothing/shoes/gce/zapatos/polainas
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/gce/macuto
	back = /obj/item/weapon/gun/projectile/automatic/rifle/hotchkiss1922/stripfed
	head = /obj/item/clothing/head/gce/garcap/popular
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/ametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/green/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 4,
	/obj/item/clothing/shoes/gce/alpargatas/short = 4 ))

/decl/hierarchy/outfit/job/gce/popular/asistenteametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Asistente de Ametrallador Popular")
	shoes = /obj/item/clothing/shoes/gce/alpargatas/short
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto
	head = /obj/item/clothing/head/gce/garcap/common
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown

/decl/hierarchy/outfit/job/gce/popular/asistenteametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/popular/fatigues/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/garbanzo/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/tan/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/khaki/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/green/pvt,
	/obj/item/clothing/under/gce/popular/fatigues/lkhaki/pvt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 1,
	/obj/item/clothing/shoes/gce/zapatos = 2,
	/obj/item/clothing/shoes/gce/zapatos/calcetines =1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 3,
	/obj/item/clothing/shoes/gce/alpargatas = 4,
	/obj/item/clothing/shoes/gce/alpargatas/short = 4 ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin = 16,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield = 6,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legpl
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Teniente Legionario") 
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/legion/officer
	glasses = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/black

/decl/hierarchy/outfit/job/gce/legion/legpl/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/lt = 3,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/lt = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legpld
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Alferez Legionario")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/legion/officer
	glasses = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/black

/decl/hierarchy/outfit/job/gce/legion/legpld/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/alf = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/alf = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legsgt
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Sargento Legionario")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = /obj/item/weapon/gun/projectile/automatic/rifle/naranjero
	head = /obj/item/clothing/head/gce/garcap/legion/officer
	glasses = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/black

/decl/hierarchy/outfit/job/gce/legion/legsgt/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/sgt,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/sgt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 6,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 4,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

/decl/hierarchy/outfit/job/gce/legion/legmg
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Ametrallador Legionario")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back_2 = /obj/item/weapon/storage/backpack/gce/macuto/black
	back = /obj/item/weapon/gun/projectile/automatic/rifle/hotchkiss1922
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = null
	right_pouch = null
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legmg/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/pfc = 1,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/pfc = 4 ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 3,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 4,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

/decl/hierarchy/outfit/job/gce/legion/legmgasst
	name = OUTFIT_JOB_NAME("Spanishcivilwar - MG Asst. Legionario")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto/black
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legmgasst/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/pvt = 1,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/pvt = 4 ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 2,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 6,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))


	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legflag
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cabo Porta-Banderin Legionario")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back = null
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	r_hand = /obj/item/weapon/carpentry/axe/legciaft
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legflag/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/cpl = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/cpl = 3 ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 4,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 5,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 5,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 5,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legmessenger
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Mensajero Legionario")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = null
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legmessenger/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/pvt = 3,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/pvt = 2 ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 2,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 6,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 8,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 6 ))

/decl/hierarchy/outfit/job/gce/legion/legsurg
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cirujano Legionario")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400/black
	back_2 = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	glasses = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/gce/black

/decl/hierarchy/outfit/job/gce/legion/legsurg/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 7,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 4,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

/decl/hierarchy/outfit/job/gce/legion/legmed
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Camillero Legionario")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black


/decl/hierarchy/outfit/job/gce/legion/legmed/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/camillero = 1,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/camillero = 3))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 2,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 5,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 2 ))

/decl/hierarchy/outfit/job/gce/legion/legsl
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Lider de Escuadra Legionario")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto/black
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legsl/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/cpl,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/cpl ))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 7,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 4,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 10,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 4,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 2 ))

/decl/hierarchy/outfit/job/gce/legion/legslasst
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Legionario de Primera")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto/black
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legslasst/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/pvt = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/pvt = 5))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 2,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 6,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 8,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

/decl/hierarchy/outfit/job/gce/legion/legfusilero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Legionario")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto/black
	head = /obj/item/clothing/head/gce/garcap/legion
	glasses = null
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/black/legion
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/black

/decl/hierarchy/outfit/job/gce/legion/legfusilero/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/legion/pvt = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/legion/alt/pvt = 5))

	shoes = pickweight(list(/obj/item/clothing/shoes/soviet/field = 2,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 6,
	/obj/item/clothing/shoes/gce/zapatos/gaiters = 3,
	/obj/item/clothing/shoes/gce/zapatos/negros/gaiters = 2,
	/obj/item/clothing/shoes/gce/zapatos/polainas = 1, ))

	back_2 = pickweight(list(/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893 = 12,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916 = 3,
	/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895 = 1 ))

//Ejercito de Tierra

/decl/hierarchy/outfit/job/gce/republican/teniente
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Teniente Republicano")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional/officer
	glasses = /obj/item/clothing/glasses/eyepatch
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/lt

/decl/hierarchy/outfit/job/gce/republican/teniente/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/breeches/lt = 3,
	/obj/item/clothing/under/gce/nacional/fatigues/lt = 2 ))

/decl/hierarchy/outfit/job/gce/republican/alferez
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Alferez Republicano")
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional/officer
	left_pouch = null
	right_pouch = null
	back_pouch =null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/alf

/decl/hierarchy/outfit/job/gce/republican/alferez/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/breeches/alf = 3,
	/obj/item/clothing/under/gce/nacional/fatigues/alf ))

/decl/hierarchy/outfit/job/gce/republican/sargento
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Sargento Republicano")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/soviet_tabletbag
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/sgt

/decl/hierarchy/outfit/job/gce/republican/sargento/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pickweight(list(/obj/item/clothing/under/gce/nacional/fatigues/breeches/sgt = 2,
	/obj/item/clothing/under/gce/nacional/fatigues/sgt ))

	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion= 9 ))

/decl/hierarchy/outfit/job/gce/republican/mensajero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Mensajero Republicano")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt

/decl/hierarchy/outfit/job/gce/republican/mensajero/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/surgeon
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cirujano Republicano")
	uniform = /obj/item/clothing/under/gce/traje/black
	shoes = /obj/item/clothing/shoes/gce/zapatos/negros
	holster = null
	back_2 = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = null
	left_pouch = null
	right_pouch = null
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = null

/decl/hierarchy/outfit/job/gce/republican/camillero
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Camillero Republicano")
	holster = null
	back = /obj/item/weapon/storage/backpack/gce/medical
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt

/decl/hierarchy/outfit/job/gce/republican/camillero/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/cabo
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Cabo Republicano")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/cpl
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/cpl

/decl/hierarchy/outfit/job/gce/republican/cabo/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/primera
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Soldado de Primera Republicano")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/pfc
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pfc

/decl/hierarchy/outfit/job/gce/republican/primera/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/soldado
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Fusilero Republicano")
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt

/decl/hierarchy/outfit/job/gce/republican/soldado/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/ametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Ametrallador Republicano")
	holster = /obj/item/weapon/storage/belt/holster/gce/astra400
	back_2 = /obj/item/weapon/storage/backpack/gce/macuto
	back = /obj/item/weapon/gun/projectile/automatic/rifle/hotchkiss1922
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket/nat/pfc
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pfc

/decl/hierarchy/outfit/job/gce/republican/ametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

/decl/hierarchy/outfit/job/gce/republican/asistenteametrallador
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Asistente de Ametrallador Republicano")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = /obj/item/weapon/storage/backpack/gce/macuto
	head = /obj/item/clothing/head/gce/garcap/nacional
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues/pvt

/decl/hierarchy/outfit/job/gce/republican/asistenteametrallador/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = pickweight(list(/obj/item/clothing/shoes/gce/zapatos/polainas = 3,
	/obj/item/clothing/shoes/gce/zapatos = 1,
	/obj/item/clothing/shoes/gce/alpargatas/tall = 2,
	/obj/item/clothing/shoes/gce/alpargatas = 3,
	/obj/item/clothing/shoes/gce/alpargatas/short = 5,
	/obj/item/clothing/shoes/gce/alpargatas/legion = 9 ))

//Bereberes
/decl/hierarchy/outfit/job/gce/moors/berber/chief
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Jefe Bereber")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/fez
	left_pouch = null
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues

/decl/hierarchy/outfit/job/gce/moors/berber/guide
	name = OUTFIT_JOB_NAME("Spanishcivilwar - Guia Bereber")
	holster = /obj/item/weapon/storage/belt/holster/sheath/gce/m1913
	back = null
	head = /obj/item/clothing/head/fez
	left_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	right_pouch = /obj/item/weapon/storage/backpack/gce/stripperpouch/brown
	back_pouch = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/gce/brown
	suit = /obj/item/clothing/suit/gce/jacket
	uniform = /obj/item/clothing/under/gce/nacional/fatigues
