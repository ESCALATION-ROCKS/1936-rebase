/obj/item/weapon/storage/backpack/soviet_tabletbag
	name = "tablet bag"
	desc = "A small leather satchel."
	icon_state = "sa_officer_satchel"
	item_state = "sa_officer_satchel"
	reachable = 1
	max_storage_space = 8
	slot_flags = SLOT_BACK
	open_delay = 5

/obj/item/weapon/storage/backpack/bundes_med
	name = "medical bag"
	desc = "A leather tablet bag used by Bundeswehr medical personnel."
	icon_state = "bundes_med"
	item_state = "bundes_med"
	reachable = 1
	max_storage_space = 15
	open_delay = 5
	slot_flags = SLOT_BACK
	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/gauze = 3,
			/obj/item/stack/medical/ointment = 1,
			/obj/item/stack/medical/splint = 1)

/obj/item/weapon/storage/backpack/bundes_buttpack
	name = "BDW field pack"
	desc = "A sturdy field pack used by Bundeswehr."
	icon_state = "bundes_buttpack"
	item_state = "bundes_buttpack"
	reachable = 1
	max_storage_space = 6
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/usmc_buttpack
	name = "US field pack"
	desc = "A sturdy field pack used by U.S. army. Also referred as butt pack"
	icon_state = "usmc_buttpack"
	item_state = "usmc_buttpack"
	reachable = 1
	max_storage_space = 6
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/usmc_buttpack/med
	name = "US medical pack"
	desc = "A sturdy field pack used by U.S. army. Also referred as butt pack. This one has a red cross on it."
	icon_state = "usmc_med"
	item_state = "usmc_med"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	max_storage_space = 6
	reachable = 1
	open_delay = 5
	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/gauze = 3,
			/obj/item/stack/medical/ointment = 1,
			/obj/item/stack/medical/splint = 1)


/obj/item/weapon/storage/backpack/usmcm3
	name = "M3 medical pack"
	desc = "A sturdy Vietnam era satchel used by medical personnel in U.S. armed forces."
	icon_state = "m3pack"
	item_state = "m3pack"
	slot_flags = SLOT_BACK
	reachable = 1
	max_storage_space = 15
	open_delay = 5
	slot_flags = SLOT_BACK
	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/gauze = 3,
			/obj/item/stack/medical/ointment = 1,
			/obj/item/stack/medical/splint = 1)

/obj/item/weapon/storage/backpack/sovietpack
	name = "kitbag"
	desc = "Commonly used by Warsaw Pact."
	icon_state = "sovietpack"
	item_state = "sovietpack"
	reachable = 0
	max_storage_space = 12
	open_delay = 5

/obj/item/weapon/storage/backpack/sovietpack/New()
	..()
	slowdown_per_slot[slot_back] = 1

/obj/item/weapon/storage/backpack/summedsan
	name = "sanitar medical bag"
	desc = "That's the 'Sumka Meditsinskaya Sanitarnaya', a medical bag commonly used by Warsaw Pact."
	icon_state = "summedsan"
	item_state = "summedsan"
	reachable = 1
	max_storage_space = 15
	open_delay = 5
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/ipp = 3,
			/obj/item/stack/medical/ointment = 2)


/obj/item/weapon/storage/backpack/gassoviet
	name = "gas mask satchel"
	desc = "That's a generic gas mask bag commonly used by Warsaw Pact."
	icon_state = "sovietgaspouch"
	item_state = "sovietgaspouch"
	reachable = 1
	max_storage_space = 6
	open_delay = 10
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/alice/medium
	name = "ALICE medium pack"
	desc = "Commonly used by USMC."
	icon_state = "alicemediumpack"
	item_state = "alicemediumpack"
	slot_flags = SLOT_BACK
	reachable = 0
	max_storage_space = 16
	open_delay = 5

/obj/item/weapon/storage/backpack/alice/medium/New()
	..()
	slowdown_per_slot[slot_back] = 0.03

/obj/item/weapon/storage/backpack/alice/large
	name = "ALICE large pack"
	desc = "Commonly used by USMC."
	icon_state = "alicelargepack"
	item_state = "alicelargepack"
	slot_flags = SLOT_BACK
	reachable = 0
	max_storage_space = 24
	open_delay = 5


/obj/item/weapon/storage/backpack/alice/large/New()
	..()
	slowdown_per_slot[slot_back] = 0.03

//finnish

/obj/item/weapon/storage/backpack/finn/finn_buttpack
	name = "utility pack"
	desc = "A sturdy utility pack standard issue in the Finnish Militaria. Also referred as butt pack"
	icon_state = "finn_buttpack"
	item_state = "finn_buttpack"
	reachable = 1
	max_storage_space = 12
	slot_flags = SLOT_BACK

/obj/item/weapon/storage/backpack/finn/finn_backpack
	name = "Field Backpack"
	desc = "Contains everything recquired for an outdoor excursion, commonly used by the Finnish."
	icon_state = "finn_backpack"
	item_state = "finn_backpack"
	reachable = 0
	max_storage_space = 16
	open_delay = 20

/obj/item/weapon/storage/backpack/finn/medical
	name = "medical bag"
	desc = "Leather Medical Backpack common in Warpact Armies."
	icon_state = "summedsan"
	item_state = "summedsan"
	reachable = 1
	max_storage_space = 15
	open_delay = 5
	slot_flags = SLOT_BACK

	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/ipp = 3,
//			/obj/item/weapon/storage/fancy/syringe = 1,
			/obj/item/stack/medical/ointment = 2)

//rpg blyat

/obj/item/weapon/storage/backpack/rpgsa
	name = "RPG rocket backpack"
	desc = "Soviet Army backpack for RPG shots. Can hold two rockets."
	icon_state = "sa_rpg2"
	item_state = "sa_rpg"
	reachable = 1
	storage_slots = 2
	open_delay = 0
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgsa/assistant
	name = "RPG Assistant rocket backpack"
	desc = "Backpack for grenadier assistant. Can hold three rockets."
	icon_state = "sa_rpg3"
	item_state = "sa_rpg"
	reachable = 1
	max_storage_space = 30
	storage_slots = 3
	open_delay = 0
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgcsla
	name = "RPG rocket backpack"
	desc = "CSLA backpack for RPG shots. Can hold two rockets."
	icon_state = "csla_rpg2"
	item_state = "csla_rpg"
	reachable = 1
	storage_slots = 2
	open_delay = 0
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgcsla/assistant
	name = "RPG rocket backpack"
	desc = "Backpack for grenadier assistant. Can hold three rockets."
	icon_state = "csla_rpg3"
	item_state = "csla_rpg"
	reachable = 1
	storage_slots = 3
	open_delay = 0
	can_hold = list(/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/gce/macuto
	name = "cloth satchel"
	desc = "That's a satchel commonly used used by the Spanish Army."
	icon_state = "macuto"
	item_state = "macuto"
	reachable = 1
	max_storage_space = 8
	open_delay = 8
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/gce/macuto/New()
	..()
	slowdown_per_slot[slot_back] = 0.15
	slowdown_per_slot[slot_add_gun] = 0.15

/obj/item/weapon/storage/backpack/gce/macuto/black
	icon_state = "macuto_black"
	item_state = "macuto_black"

/obj/item/weapon/storage/backpack/gce/medical
	name = "medical bag"
	desc = "That's a medical bag."
	icon_state = "summedsan"
	item_state = "summedsan"
	reachable = 1
	max_storage_space = 15
	open_delay = 9
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/ipp = 3,
			/obj/item/stack/medical/ointment = 2)


/obj/item/weapon/storage/backpack/gce/manta/
	reachable = 0
	max_storage_space = 16
	open_delay = 46
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/gce/manta/New()
	..()
	slowdown_per_slot[slot_back] = 0.25
	slowdown_per_slot[slot_add_gun] = 0.25

/obj/item/weapon/storage/backpack/gce/manta/darkbrown
	name = "blanket"
	desc = "That's a wool blanket traditionally used for miscellaneous storage while on campaign. This one is comes in a dark shade of brown."
	icon_state = "manta_darkbrown"
	item_state = "manta_darkbrown"

/obj/item/weapon/storage/backpack/gce/manta/brown
	name = "blanket"
	desc = "That's a wool blanket traditionally used for miscellaneous storage while on campaign. This one is comes in a light shade of brown."
	icon_state = "manta_brown"
	item_state = "manta_brown"

/obj/item/weapon/storage/backpack/gce/manta/darkgreen
	name = "blanket"
	desc = "That's a wool blanket traditionally used for miscellaneous storage while on campaign. This one is comes in a dark shade of olive drab."
	icon_state = "manta_darkgreen"
	item_state = "manta_darkgreen"

/obj/item/weapon/storage/backpack/gce/manta/khaki
	name = "blanket"
	desc = "That's a wool blanket traditionally used for miscellaneous storage while on campaign. This one is comes in a tan colour."
	icon_state = "manta_khaki"
	item_state = "manta_khaki"

/obj/item/weapon/storage/backpack/gce/manta/black
	name = "blanket"
	desc = "That's a wool blanket traditionally used for miscellaneous storage while on campaign. This one is black."
	icon_state = "manta_black"
	item_state = "manta_black"