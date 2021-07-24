/obj/item/weapon/gun/projectile/automatic/rifle/m21
	name = "M21"
	desc = "A standard-issue USMC marksman rifle."
	icon_state = "m21scoped"
	item_state = "m21"
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	screen_shake = 2
	w_class = 5
	accuracy = 5
	force = 15
	caliber = "762x51"
	allowed_magazines = list(/obj/item/ammo_magazine/c762x51s, /obj/item/ammo_magazine/c762x51m)
	load_method = MAGAZINE
	magazine_type = null
	wielded_item_state = "m21-wielded"
	bayonet_attachable = 1
	bayonet_type = /obj/item/weapon/material/knife/bayonet/usmc
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.ogg'
	slowdown_general = 0.5
	fire_sound = 'sound/weapons/gunshot/m14.ogg'
	wielded_item_state = "m21-wielded"
	unload_sound = 'sound/weapons/gunporn/m14_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m14_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m14_charge.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.ogg'

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=8.5,    move_delay=null, one_hand_penalty=10, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/m21/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m21scoped"
		wielded_item_state = "m21-wielded"
	else
		icon_state = "m21scoped-empty"
		wielded_item_state = "m21-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/m21/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 3)

/obj/item/weapon/gun/projectile/automatic/rifle/svd
	name = "SVD"
	desc = "A standard-issue Soviet Army and NVA DDR marksman rifle. Chambers 7.62x54mmR rounds."
	icon_state = "svd"
	item_state = "svd"
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	w_class = 5
	force = 15
	max_shells = 10
	screen_shake = 1
	caliber = "762x54"
	ammo_type = null
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x54s
	one_hand_penalty = 10
	bayonet_attachable = 1
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h3/
	accuracy = 0.5
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	wielded_item_state = "svd-wielded"
	unload_sound = 'sound/weapons/gunporn/svd_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/svd_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/svd_boltback.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.ogg'
	slowdown_general = 0.30

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=7,    move_delay=null, one_hand_penalty=10, burst_accuracy=null, dispersion=null),
		)


/obj/item/weapon/gun/projectile/automatic/rifle/svd/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "svd"
		wielded_item_state = "svd-wielded"
	else
		icon_state = "svd-empty"
		wielded_item_state = "svd-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/svd/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 3)

/obj/item/weapon/gun/projectile/automatic/rifle/g3sg1
	name = "G3SG1"
	desc = "A scoped Bundeswehr combat rifle. Chambers 7.62x51 rounds."
	icon_state = "g3sg1"
	item_state = "g3sg1"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	force = 15
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	ammo_type = null
	allowed_magazines = list(/obj/item/ammo_magazine/c762x51s, /obj/item/ammo_magazine/c762x51m)
	magazine_type = null
	screen_shake = 1
	one_hand_penalty = 5
	bayonet_type = /obj/item/weapon/material/knife/bayonet/bdw/
	bayonet_attachable = 1
	accuracy = 4.7
	wielded_item_state = "g3sg1-wielded"
	fire_sound = 'sound/weapons/gunshot/g3sg1.ogg'
	unload_sound = 'sound/weapons/gunporn/g3_magout.ogg' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/g3_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/g3_boltpull.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/g3_dist.ogg'
	slowdown_general = 0.30

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=8.5,    move_delay=null, one_hand_penalty=10, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/g3sg1/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "g3sg1"
		wielded_item_state = "g3sg1-wielded"
	else
		icon_state = "g3sg1-empty"
		wielded_item_state = "g3sg1-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/g3sg1/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 3)

/obj/item/weapon/gun/projectile/automatic/rifle/ssg58
	name = "SSG 58"
	desc = "The sniper configuration of an outdated Bundesheer combat rifle. Chambers 7.62x51 rounds."
	icon_state = "ssg58"
	item_state = "ssg58"
	force = 15
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	ammo_type = null
	allowed_magazines = list(/obj/item/ammo_magazine/c762x51s, /obj/item/ammo_magazine/c762x51m)
	magazine_type = null
	screen_shake = 1
	one_hand_penalty = 5
	bayonet_type = /obj/item/weapon/material/knife/bayonet/bdw/
	bayonet_attachable = 1
	accuracy = 4.7
	wielded_item_state = "ssg58-wielded"
	fire_sound = 'sound/weapons/gunshot/fnfal.ogg'
	unload_sound = 'sound/weapons/gunporn/fnfal_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/fnfal_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/fnfal_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/fnfal_dist.ogg'
	slowdown_general = 0.30

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=8.5,    move_delay=null, one_hand_penalty=10, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/ssg58/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ssg58"
		wielded_item_state = "ssg58-wielded"
	else
		icon_state = "ssg58-empty"
		wielded_item_state = "ssg58-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/ssg58/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 3)


/obj/item/weapon/gun/projectile/automatic/rifle/wa2000
	name = "WA2000"
	desc = "An incredibly rare and accurate semi-automatic bullpup sniper rifle. Chambers 7.62x51 rounds."
	icon_state = "wa2000"
	item_state = "wa2000"
	w_class = 5
	force = 15
	screen_shake = 1
	max_shells = 6
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	bayonet_type = /obj/item/weapon/material/knife/bayonet/bdw/
	bayonet_attachable = 1
	ammo_type = null
	allowed_magazines = list(/obj/item/ammo_magazine/c762x51wa)
	magazine_type = null
	one_hand_penalty = 6
	accuracy = 6
	wielded_item_state = "wa2000-wielded"
	fire_sound = 'sound/weapons/gunshot/g3sg1.ogg'
	unload_sound = 'sound/weapons/gunporn/g3_magout.ogg' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/g3_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/g3_boltpull.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/g3_dist.ogg'
	slowdown_general = 0.30

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=9,    move_delay=null, one_hand_penalty=6, burst_accuracy=null,          dispersion=null,           automatic = 0)
	)
/obj/item/weapon/gun/projectile/automatic/rifle/wa2000/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "wa2000"
		wielded_item_state = "wa2000-wielded"
	else
		icon_state = "wa2000-empty"
		wielded_item_state = "wa2000-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/wa2000/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 3)


/obj/item/weapon/gun/projectile/automatic/rifle/barrett
	name = "Barrett M82"
	desc = "A powerful and recognized anti material rifle. Chambers .50 rounds."
	icon = 'icons/obj/coldwar/guns48x48.dmi'
	icon_state = "barrett"
	item_state = "heavysniper"
	w_class = 5
	force = 15
	max_shells = 10
	load_method = MAGAZINE
	caliber = ".50"
	screen_shake = 2
	slot_flags = SLOT_GUN_SLOT | SLOT_BACK
	ammo_type = null
	allowed_magazines = list(/obj/item/ammo_magazine/c50cals)
	magazine_type = null
	one_hand_penalty = 10
	accuracy = 8
	wielded_item_state = "heavysniper-wielded"
	fire_sound = 'sound/weapons/gunshot/barrett.ogg'
	unload_sound = 'sound/weapons/gunporn/barrett_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/barrett_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/barrett_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/50cal_dist.ogg'
	slowdown_general = 1.5
	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=16,    move_delay=null, one_hand_penalty=6, burst_accuracy=null,          dispersion=null,           automatic = 0)
	)

/obj/item/weapon/gun/projectile/automatic/rifle/m82/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "barrett"
		wielded_item_state = "heavysniper-wielded"
	else
		icon_state = "barrett-empty"
		wielded_item_state = "heavysniper-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/barrett/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr, 5)
