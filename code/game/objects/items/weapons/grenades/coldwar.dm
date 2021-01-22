//sovok granades//
//////////////////
/obj/item/weapon/grenade/frag/f1
	name = "F1 frag grenade"
	desc = "A defensive grenade used by the Soviet Army. Meant to be thrown from behind the cover."
	icon_state = "f1grenade"
	throw_speed = 2
	throw_range = 10
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/offensive)
	num_fragments = 290  //total number of fragments produced by the grenade
	explosion_size = 2

/obj/item/weapon/grenade/frag/rgd5
	name = "RGD-5 grenade"
	desc = "An offensive grenade used by the Soviet Army. Meant to be thrown against enemy positions during a push."
	icon_state = "rgd5grenade"
	throw_speed = 3
	throw_range = 13
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/defensive)
	num_fragments = 170  //total number of fragments produced by the grenade
	explosion_size = 4

///muricane granades////
////////////////////////

/obj/item/weapon/grenade/frag/m67
	name = "M67 frag grenade"
	desc = "A fragmentation grenade used by NATO armies, dubbed 'Pineapple'."
	icon_state = "m67grenade"
	throw_speed = 2
	throw_range = 10
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/defensive)
	num_fragments = 190  //total number of fragments produced by the grenade
	explosion_size = 2

/obj/item/weapon/grenade/frag/m26
	name = "M26 frag grenade"
	desc = "A fragmentation grenade used by US forces, dubbed 'Lemon'."
	icon_state = "m26grenade"
	throw_speed = 3
	throw_range = 8
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/offensive)
	num_fragments = 290  //total number of fragments produced by the grenade
	explosion_size = 3

///bund//////////////////////
/////////////////////////////
/obj/item/weapon/grenade/frag/dm51
	name = "DM51 grenade (offensive)"
	desc = "A dual purpose grenade used by the Bundeswehr. This one does not have a fragmentation jacket."
	icon_state = "dm51offensive"
	throw_speed = 4
	throw_range = 13
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/offensive)
	num_fragments = 190  //total number of fragments produced by the grenade
	explosion_size = 3

/obj/item/weapon/grenade/frag/dm51/def
	name = "DM51 grenade (defensive)"
	icon_state = "dm51grenade"
	desc = "A dual purpose grenade used by the Bundeswehr. This one has it's fragmentation jacket on."
	throw_speed = 3
	throw_range = 10
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/offensive)
	num_fragments = 270  //total number of fragments produced by the grenade
	explosion_size = 2

//////czech/////////
////////////////////

//they used f1 also as a offensive grenade

/obj/item/weapon/grenade/frag/rg42
	name = "RG-42 grenade"
	desc = "That's a defensive grenade used by Czech army."
	icon_state = "rg42grenade"
	throw_speed = 2
	throw_range = 8
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/strong)
	num_fragments = 230  //total number of fragments produced by the grenade
	explosion_size = 2

////////////////////////////////////////////////////////////////////////////////////////////
/////////////////GP's vogs for soviet and muricans//////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/grenade/frag/shell40mm
	name = "40x46mm 'M381 HE' grenade shell"
	desc = "Cannot be thrown as the usual grenade, by the way."
	icon_state = "M406"
	num_fragments = 130 //less powerful than a regular frag grenade
	//arm_sound = 'sound/weapons/gunshot/grenadelaunch.ogg'
	throw_speed = 1
	throw_range = 15
	arm_sound = 'sound/weapons/grenlauncher.wav'


/obj/item/weapon/grenade/frag/shell40mm/attack_self(mob/user)
	return

/obj/item/weapon/grenade/frag/vog25
	name = "40x103mm 'VOG-25' grenade shell"
	desc = "Cannot be thrown as the usual grenade, by the way."
	icon_state = "40x103mmshell"
	num_fragments = 160 //less powerful than a regular frag grenade
	//arm_sound = 'sound/weapons/gunshot/grenadelaunch.ogg'
	throw_speed = 1
	throw_range = 15
	arm_sound = 'sound/weapons/grenlauncher.wav'

/obj/item/weapon/grenade/frag/vog25/attack_self(mob/user)
	return


/obj/item/projectile/bullet/pellet/fragment/defensive
	agony = 12
	armor_penetration = -7
	check_armour = "bomb"

	New()
		damage = rand(12, 26)

/obj/item/projectile/bullet/pellet/fragment/offensive
	agony = 9
	armor_penetration = -10
	check_armour = "bomb"

	New()
		damage = rand(10, 22)




//SCW Nades
/obj/item/weapon/grenade/frag/universalgrenade
	name = "Granada 'Universal'"
	desc = "A war-time production fragmentation grenade used by both sides of the conflict."
	icon_state = "universal_grenade"
	item_state = "universal_grenade"
	throw_speed = 3
	throw_range = 10
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/defensive)
	num_fragments = 270  //total number of fragments produced by the grenade
	explosion_size = 2
	det_time = 35

/obj/item/weapon/grenade/frag/lafitte
	name = "Granada 'Lafitte' M1921"
	desc = "An outdated and heavy hand grenade with little fragmentation to speak of, but loaded with an impressive amount of explosives."
	icon_state = "lafitte"
	item_state = "lafitte"
	throw_speed = 7
	throw_range = 6
	fragment_types = list(/obj/item/projectile/bullet/pellet/fragment/offensive)
	num_fragments = 70  //total number of fragments produced by the grenade
	explosion_size = 4	

/obj/item/weapon/grenade/frag/lafitte/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, 1, 2, explosion_size, round(explosion_size/2), 0)

// Dynamite

/obj/item/weapon/dynamite
	name = "dynamite"
	desc = "A stick of dynamite."
	w_class = ITEM_SIZE_SMALL
	icon = 'icons/obj/grenade.dmi'
	icon_state = "dynamite"
	item_state = "dynamite"
	throw_speed = 10
	throw_range = 5
	flags = CONDUCT
	slot_flags = SLOT_BELT
	var/active = 0
	var/det_time = 70
	var/arm_sound = 'sound/effects/fuse.ogg'
	var/explosion_size = 5

/obj/item/weapon/dynamite/proc/detonate()
	var/turf/T = get_turf(src)
	if(T)
		T.hotspot_expose(700,125)

/obj/item/weapon/dynamite/detonate()
	..()

	var/turf/O = get_turf(src)
	if(!O) return

	if(explosion_size)
		on_explosion(O)

	qdel(src)

/obj/item/weapon/dynamite/examine(mob/user)
	if(..(user, 0))
		if(det_time > 1)
			to_chat(user, "The fuse is about [det_time/10] seconds long.")
			return
		if(det_time == null)
			return
		to_chat(user, "\The [src] is set for instant detonation.")

/obj/item/weapon/dynamite/proc/activate(mob/user as mob)
	if(active)
		return

	if(user)
		msg_admin_attack("[user.name] ([user.ckey]) primed \a [src] (<A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[user.x];Y=[user.y];Z=[user.z]'>JMP</a>)")

	icon_state = initial(icon_state) + "_active"
	active = 1
	playsound(loc, arm_sound, 75, 0, -3)

	spawn(det_time)
		detonate()
		return

/obj/item/weapon/dynamite/proc/on_explosion(var/turf/O)
	if(explosion_size)
		explosion(O, 2, 3, explosion_size, round(explosion_size/2), 0)

/obj/item/weapon/dynamite/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(isflamesource(W))
		if(!active)
			to_chat(user, "<span class='warning'>You light \the [name] fuse! [det_time/10] seconds!</span>")
			activate(user)
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.throw_mode_on()
	..()
	return

/obj/item/weapon/dynamite/attack_hand()
	walk(src, null, null)
	..()
	return