//Soviet armor

/obj/item/clothing/suit/storage/vest/soviet/
	w_class = ITEM_SIZE_LARGE
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	allowed = list(/obj/item/device/radio,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/gun/magnetic)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/storage/vest/soviet/a6b3
	name = "6B3 armor vest"
	desc = "An uncommon armor vest with some pouches and titanium plates used by Soviet army."
	icon_state = "6b3"
	item_state = "armor"
	armor = list(melee = 30, bullet = 48, laser = 0, energy = 25, bomb = 28, bio = 0, rad = 0)
	slowdown_general = 0.4

/obj/item/clothing/suit/storage/vest/soviet/a6b3/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 4, slot_size = 2)

/obj/item/clothing/suit/armor/vest/soviet/
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_S)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_S)
	allowed = list(/obj/item/device/radio,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/gun/magnetic)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/vest/soviet/a6b2
	name = "6B2 armored vest"
	desc = "A medium armor vest used by Soviet army."
	icon_state = "6b2"
	item_state = "armor"
	armor = list(melee = 30, bullet = 28, laser = 40, energy = 10, bomb = 32, bio = 0, rad = 0)
	slowdown_general = 0.2


//USMC

/obj/item/clothing/suit/storage/vest/pasgt
	name = "PASGT M81 vest"
	desc = "A common kevlar vest used by U.S. army."
	icon_state = "pasgt_vest"
	item_state = "armor"
	w_class = ITEM_SIZE_LARGE
	armor = list(melee = 30, bullet = 32, laser = 0, energy = 25, bomb = 34, bio = 0, rad = 0)
	slowdown_general = 0.23

/obj/item/clothing/suit/storage/vest/pasgt/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 2, slot_size = 2)

/obj/item/clothing/suit/storage/vest/pasgt/woodland
	icon_state = "pasgt_vest_woodland"


/obj/item/clothing/suit/storage/vest/flakvest
	name = "M69 flak vest"
	desc = "An outdated flak vest used by NATO personnel."
	icon_state = "flakvest_nato"
	item_state = "armor"
	w_class = ITEM_SIZE_LARGE
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMOR_S)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMOR_S)
	armor = list(melee = 24, bullet = 28, laser = 0, energy = 25, bomb = 38, bio = 0, rad = 0)
	slowdown_general = 0.15


/obj/item/clothing/suit/storage/vest/flakvest/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 2, slot_size = 2)


//Wake up, Mister Freeman, Wake up, and Smell the Ashes.

/obj/item/clothing/suit/armor/vest/hev/
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	allowed = list(/obj/item/device/radio,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/gun/magnetic)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/vest/hev
	name = "H.E.V Suit"
	desc = "Experimental Protective Armor Created by Black Mesa."
	icon_state = "hev_s"
	item_state = "armor"
	w_class = ITEM_SIZE_LARGE
	armor = list(melee = 90, bullet = 85, laser = 35, energy = 75, bomb = 65, bio = 100, rad = 100)
	slowdown_general = 0.2

/obj/item/clothing/suit/armor/vest/hev/woodland
	icon_state = "hev_w"

//SCW

/obj/item/clothing/suit/gce/apron
	name = "surgical apron"
	desc = "An outdated surgical apron."
	icon_state = "gceapron"
	item_state = "gceapron"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	allowed = list(/obj/item/stack/medical, /obj/item/weapon/reagent_containers/dropper, /obj/item/weapon/reagent_containers/hypospray, /obj/item/weapon/reagent_containers/syringe, \
	/obj/item/device/healthanalyzer, /obj/item/device/flashlight, /obj/item/device/radio, /obj/item/weapon/tank/emergency,/obj/item/weapon/scalpel,/obj/item/weapon/retractor,/obj/item/weapon/hemostat, \
	/obj/item/weapon/cautery,/obj/item/weapon/bonegel,/obj/item/weapon/FixOVein)

/obj/item/clothing/suit/gce/apron/green
	desc = "An outdated surgical apron made from some kind of greenish rubber."
	icon_state = "gceapron_green"
	item_state = "gceapron_green"

/obj/item/clothing/suit/gce/jacket
	name = "field blouse"
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926"
	item_state = "1926"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/gce/jacket/nat/pfc
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926_pfc"
	item_state = "1926_pfc"

/obj/item/clothing/suit/gce/jacket/nat/cpl
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926_cpl"
	item_state = "1926_cpl"
	
/obj/item/clothing/suit/gce/jacket/nat/sgt
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926_sgt"
	item_state = "1926_sgt"

/obj/item/clothing/suit/gce/jacket/nat/alf
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926_officer_nalf"
	item_state = "1926_officer_nalf"

/obj/item/clothing/suit/gce/jacket/nat/lt
	desc = "A Spanish Army uniform jacket."
	icon_state = "1926_officer_nlt"
	item_state = "1926_officer_nlt"