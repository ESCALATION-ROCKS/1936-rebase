/obj/item/weapon/gun/projectile/rifle/boltaction
	name = "bolt action rifle"
	desc = "SET DESC HERE. Uses 7.62x51 ammo."
	icon_state = "huntrifle"
	item_state = "arifle-empty" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	caliber = "7.62x51"
	wielded_item_state = "huntrifle2"
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	one_hand_penalty = 5
	accuracy = 5
	var/bolt_open = 0
	wielded_item_state = "gun_wielded" //sort of placeholder
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	jam_chance = 0.2
	jam_chance = 20

/obj/item/weapon/gun/projectile/rifle/boltaction/update_icon()
	..()
	if(bolt_open  && w_class == ITEM_SIZE_HUGE)
		icon_state = "huntrifle"
	else if(!bolt_open && w_class == ITEM_SIZE_HUGE)
		icon_state = "huntrifle"
	else if(bolt_open)
		icon_state = "huntrifle-sawn"
	else
		icon_state = "huntrifle-sawn"

/obj/item/weapon/gun/projectile/rifle/boltaction/attack_self(mob/user as mob)
	bolt_open = !bolt_open
	if(bolt_open)
		playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
		if(chambered)
			to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
			chambered.loc = get_turf(src)
			loaded -= chambered
			chambered = null
		else
			to_chat(user, "<span class='notice'>You work the bolt open.</span>")
	else
		to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
		playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/rifle/boltaction/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/rifle/boltaction/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/boltaction/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/boltaction/attackby(var/obj/item/A as obj, mob/user as mob)
	if(w_class > 3 && (istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/melee/energy) || istype(A, /obj/item/weapon/pickaxe/plasmacutter)))
		to_chat(user, "<span class='notice'>You begin to shorten the barrel of \the [src].</span>")
		if(loaded.len)
			for(var/i in 1 to max_shells)
				Fire(user, user)	//will this work? //it will. we call it twice, for twice the FUN
			user.visible_message("<span class='danger'>The shotgun goes off!</span>", "<span class='danger'>The shotgun goes off in your face!</span>")
			return
		if(do_after(user, 30, src))	//SHIT IS STEALTHY EYYYYY
			icon_state = "huntrifle-sawn"
			w_class = ITEM_SIZE_NORMAL
			force = 5
			one_hand_penalty = 1
			slot_flags &= ~SLOT_BACK	//you can't sling it on your back
			slot_flags |= (SLOT_BELT|SLOT_HOLSTER) //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
			name = "sawn-off bolt action rifle"
			to_chat(user, "<span class='warning'>You shorten the barrel of \the [src]!</span>")
	else
		..()

/obj/item/weapon/gun/projectile/rifle/boltaction/sawn
	name = "sawn-off bolt action rifle"
	slot_flags = SLOT_BELT|SLOT_HOLSTER //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
	item_state = "huntrifle-sawn"
	w_class = ITEM_SIZE_NORMAL
	icon_state = "huntrifle-sawn"
	force = 5
	one_hand_penalty = 0

/obj/item/weapon/gun/projectile/rifle
	name = "self-loading rifle"
	desc = "SET DESC HERE. Uses 7.62x51 ammo."
	icon_state = "762ebr"
	item_state = "arifle-empty" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	wielded_item_state = "rifle2"
	force = 10
	slot_flags = SLOT_BACK
	caliber = "7.62x51"
	screen_shake = 1 //extra kickback
	load_method = MAGAZINE
	max_shells = 10
	one_hand_penalty = 3
	accuracy = 2
	wielded_item_state = "gun_wielded" //sort of placeholder
	picksound = 'sound/items/interactions/rifle_draw.wav'
	magazine_type = /obj/item/ammo_magazine/a762x51smag
	allowed_magazines =/obj/item/ammo_magazine/a762x51smag //more damage compared to the wt550, smaller mag size
	unload_sound = 'sound/weapons/gunhandling/rifle_magout.wav'
	reload_sound = 'sound/weapons/gunhandling/rifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/rifle_boltback.wav'
	jam_chance = 20

/obj/item/weapon/gun/projectile/rifle/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "762ebr"
	else
		icon_state = "762ebr-empty"

//SCW Rifles

//Bayonet Code

/obj/item/weapon/gun/projectile/rifle/gceboltaction/
	slot_flags = SLOT_BACK_GUN
	var/bolt_open = 0
	var/bayonet_type = null
	var/bayonet_attachable = 0
	var/obj/item/weapon/material/knife/bayonet/knife = null
	starts_loaded = 0

/obj/item/weapon/gun/projectile/rifle/gceboltaction/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/rifle/gceboltaction/verb/remove_bayonet

/obj/item/weapon/gun/projectile/rifle/gceboltaction/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, src.bayonet_type) && bayonet_attachable)
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		bayonet_attachable = 0
		to_chat(user, "<span class='notice'>You attach [knife.name] to the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/rifle/gceboltaction/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/update_icon()
	..()
	if(knife)
		var/image/I = image('icons/obj/bayonets.dmi', src, knife.icon_state)
		I.pixel_x += 10
		I.pixel_y += 10
		overlays += I
	else
		overlays.Cut()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/verb/remove_bayonet()
	set name = "Detach Bayonet"
	set category = "Object"
	set popup_menu = 1
	set src in usr

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		bayonet_attachable = 1
		to_chat(usr, "<span class='notice'>You detach the bayonet from the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/rifle/gceboltaction/verb/remove_bayonet
		update_icon()

//Ends Bayonet Code

/obj/item/weapon/gun/projectile/rifle/gceboltaction/attack_self(mob/user as mob)
    bolt_open = !bolt_open
    if(do_after(user, 6.5, src))
        if(bolt_open)
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
            if(chambered)
                to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
                chambered.loc = get_turf(src)
                loaded -= chambered
                chambered = null
            else
                to_chat(user, "<span class='notice'>You work the bolt open.</span>")
        else
            to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
            bolt_open = 0
        add_fingerprint(user)
        update_icon()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893
	name = "M1893"
	desc = "Spanish Mauser Rifle Model 1893. One of the many standard issue rifles of the Spanish Army before the war. Uses 7x57mm stripper clips."
	icon_state = "1893"
	item_state = "1893"
	force = 15
	caliber = "7x57"
	wielded_item_state = "1893-wielded"
	w_class = ITEM_SIZE_HUGE
	screen_shake = 1 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/a7x57
	one_hand_penalty = 8
	accuracy = 4.15
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'
	jam_chance = 0.4
	slowdown_general = 0.45
	bayonet_type = /obj/item/weapon/material/knife/bayonet/gce/m1913
	bayonet_attachable = 1
	weapon_speed_delay = 14

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1893/update_icon()
	..()
	if(bolt_open)
		icon_state = "1893-open"
	else
		icon_state = "1893"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916
	name = "M1916"
	desc = "Spanish Mauser Short Rifle Model 1916 'Oviedo'. One of the many standard issue rifles of the Spanish Army before the war. Uses 7x57mm stripper clips."
	icon_state = "1916"
	item_state = "1916"
	force = 11
	caliber = "7x57"
	wielded_item_state = "1916-wielded"
	w_class = ITEM_SIZE_LARGE
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/a7x57
	one_hand_penalty = 6
	accuracy = 3.85
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'
	jam_chance = 0.55
	slowdown_general = 0.3
	bayonet_type = /obj/item/weapon/material/knife/bayonet/gce/m1913
	bayonet_attachable = 1
	weapon_speed_delay = 10

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916/update_icon()
	..()
	if(bolt_open)
		icon_state = "1916-open"
	else
		icon_state = "1916"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1916/attack_self(mob/user as mob)
    bolt_open = !bolt_open
    if(do_after(user, 4, src))
        if(bolt_open)
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
            if(chambered)
                to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
                chambered.loc = get_turf(src)
                loaded -= chambered
                chambered = null
            else
                to_chat(user, "<span class='notice'>You work the bolt open.</span>")
        else
            to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
            bolt_open = 0
        add_fingerprint(user)
        update_icon()

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895
	name = "M1895"
	desc = "Spanish Mauser Carbine Model 1895. A carbine issued to cavalry units of the Spanish Army before the war. Uses 7x57mm stripper clips."
	icon_state = "1895"
	item_state = "1895"
	force = 13
	caliber = "7x57"
	wielded_item_state = "1895-wielded"
	w_class = ITEM_SIZE_LARGE
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/a7x57
	one_hand_penalty = 4
	accuracy = 3.5
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'
	jam_chance = 0.75
	slowdown_general = 0.35
	weapon_speed_delay = 12

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895/update_icon()
	..()
	if(bolt_open)
		icon_state = "1895-open"
	else
		icon_state = "1895"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/m1895/attack_self(mob/user as mob)
    bolt_open = !bolt_open
    if(do_after(user, 5, src))
        if(bolt_open)
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
            if(chambered)
                to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
                chambered.loc = get_turf(src)
                loaded -= chambered
                chambered = null
            else
                to_chat(user, "<span class='notice'>You work the bolt open.</span>")
        else
            to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
            bolt_open = 0
        add_fingerprint(user)
        update_icon()


/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin
	name = "Mosin-Nagant"
	desc = "An imported Soviet rifle. Chambers 7.62x54mmR rounds."
	icon_state = "mosin"
	item_state = "mosin"
	force = 15
	caliber = "762x54"
	wielded_item_state = "mosin-wielded"
	w_class = ITEM_SIZE_HUGE
	screen_shake = 1 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/a762x54
	one_hand_penalty = 9
	accuracy = 3.85
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'
	jam_chance = 0.360
	slowdown_general = 0.35
	bayonet_attachable = 0
	weapon_speed_delay = 14

/obj/item/weapon/gun/projectile/rifle/gceboltaction/mosin/update_icon()
	..()
	if(bolt_open)
		icon_state = "mosin-open"
	else
		icon_state = "mosin"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield
	name = "Enfield SMLE"
	desc = "A standard issue British rifle. Chambers .303 rounds."
	icon_state = "enfield"
	item_state = "enfield"
	force = 10
	caliber = "303"
	wielded_item_state = "enfield-wielded"
	w_class = ITEM_SIZE_LARGE
	screen_shake = 1 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 10
	ammo_type = /obj/item/ammo_casing/a303
	one_hand_penalty = 7
	accuracy = 4.4
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'
	jam_chance = 0.395
	slowdown_general = 0.35
	bayonet_attachable = 0

/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield/update_icon()
	..()
	if(bolt_open)
		icon_state = "enfield-open"
	else
		icon_state = "enfield"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield/update_icon()
	..()
	if(bolt_open)
		icon_state = "enfield-open"
	else
		icon_state = "enfield"

/obj/item/weapon/gun/projectile/rifle/gceboltaction/enfield/attack_self(mob/user as mob)
    bolt_open = !bolt_open
    if(do_after(user, 5, src))
        if(bolt_open)
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
            if(chambered)
                to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
                chambered.loc = get_turf(src)
                loaded -= chambered
                chambered = null
            else
                to_chat(user, "<span class='notice'>You work the bolt open.</span>")
        else
            to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
            playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
            bolt_open = 0
        add_fingerprint(user)
        update_icon()
