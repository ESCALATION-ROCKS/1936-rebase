/obj/item/projectile/bullet
	name = "bullet"
	icon_state = "bullet_old"
	damage = 60
	damage_type = BRUTE
	nodamage = 0
	check_armour = "bullet"
	embed = 1
	sharp = 1
	edge = 0
	eyeblur = 5
	hit_sound = "bul_impact"

	muzzle_type = /obj/effect/projectile/bullet/muzzle

/obj/item/projectile/bullet/on_hit(var/atom/target, var/blocked = 0)
	if(..(target, blocked))
		var/mob/living/L = target
		shake_camera(L, 3, 2)

/obj/item/projectile/bullet/attack_mob(var/mob/living/target_mob, var/distance, var/miss_modifier)
	//what?
	if(prob(mob_passthrough_chance))
		mob_passthrough_check = TRUE
	else
		mob_passthrough_check = FALSE
	return ..()

/obj/item/projectile/bullet/can_embed()
	//prevent embedding if the projectile is passing through the mob
	if(mob_passthrough_check)
		return FALSE
	return ..()

/obj/item/projectile/bullet/check_penetrate(var/atom/A)
	if(!A || !A.density)
		return 1 //if whatever it was got destroyed when we hit it, then I guess we can just keep going

	if(istype(A, /obj/mecha))
		return 1 //mecha have their own penetration handling

	if(ismob(A))
		if(!mob_passthrough_check)
			return 0
		return 1

	var/chance = damage
	if(istype(A, /turf/simulated/wall))
		var/turf/simulated/wall/W = A
		chance = round(damage/W.material.integrity*90)
	else if(istype(A, /obj/machinery/door))
		var/obj/machinery/door/D = A
		chance = round(damage/D.maxhealth*90)
		if(D.glass) chance *= 2
	else if(istype(A, /obj/structure/girder))
		chance = 100

	if(prob(chance))
		if(A.opacity)
			//display a message so that people on the other side aren't so confused
			A.visible_message("<span class='warning'>\The [src] pierces through \the [A]!</span>")
		return 1

	return 0

//For projectiles that actually represent clouds of projectiles
/obj/item/projectile/bullet/pellet
	name = "shrapnel" //'shrapnel' sounds more dangerous (i.e. cooler) than 'pellet'
	damage = 17
	armor_penetration = 0
	icon_state = "pellets" //TODO: would be nice to have it's own icon state
	var/pellets = 10		//number of pellets
	var/range_step = 2		//projectile will lose a fragment each time it travels this distance. Can be a non-integer.
	var/base_spread = 90	//lower means the pellets spread more across body parts. If zero then this is considered a shrapnel explosion instead of a shrapnel cone
	var/spread_step = 10	//higher means the pellets spread more across body parts with distance

/obj/item/projectile/bullet/pellet/Bumped()
	. = ..()
	bumped = 0 //can hit all mobs in a tile. pellets is decremented inside attack_mob so this should be fine.

/obj/item/projectile/bullet/pellet/proc/get_pellets(var/distance)
	var/pellet_loss = round((distance - 1)/range_step) //pellets lost due to distance
	return max(pellets - pellet_loss, 1)

/obj/item/projectile/bullet/pellet/attack_mob(var/mob/living/target_mob, var/distance, var/miss_modifier)
	if (pellets < 0) return 1

	var/total_pellets = get_pellets(distance)
	var/spread = max(base_spread - (spread_step*distance), 0)

	//shrapnel explosions miss prone mobs with a chance that increases with distance
	var/prone_chance = 0
	if(!base_spread)
		prone_chance = max(spread_step*(distance - 2), 0)

	var/hits = 0
	for (var/i in 1 to total_pellets)
		if(target_mob.lying && target_mob != original && prob(prone_chance))
			continue

		//pellet hits spread out across different zones, but 'aim at' the targeted zone with higher probability
		//whether the pellet actually hits the def_zone or a different zone should still be determined by the parent using get_zone_with_miss_chance().
		var/old_zone = def_zone
		def_zone = ran_zone(def_zone, spread)
		if (..()) hits++
		def_zone = old_zone //restore the original zone the projectile was aimed at

	pellets -= hits //each hit reduces the number of pellets left
	if (hits >= total_pellets || pellets <= 0)
		return 1
	return 0

/obj/item/projectile/bullet/pellet/get_structure_damage()
	var/distance = get_dist(loc, starting)
	return ..() * get_pellets(distance)

/obj/item/projectile/bullet/pellet/Move()
	. = ..()

	//If this is a shrapnel explosion, allow mobs that are prone to get hit, too
	if(. && !base_spread && isturf(loc))
		for(var/mob/living/M in loc)
			if(M.lying || !M.CanPass(src, loc, 0.5, 0)) //Bump if lying or if we would normally Bump.
				if(Bump(M)) //Bump will make sure we don't hit a mob multiple times
					return

/* short-casing projectiles, like the kind used in pistols or SMGs */

/obj/item/projectile/bullet/pistol/medium
	damage = 25

/obj/item/projectile/bullet/pistol/medium/smg
	damage = 30

/obj/item/projectile/bullet/pistol/strong //revolvers and matebas
	damage = 60

/obj/item/projectile/bullet/pistol/rubber //"rubber" bullets
	name = "rubber bullet"
	check_armour = "melee"
	damage = 5
	agony = 25
	embed = 0
//	sharp = 0

/* shotgun projectiles */

/obj/item/projectile/bullet/shotgun
	name = "slug"
	damage = 50
	armor_penetration = 5
	armor_damage = 40

/obj/item/projectile/bullet/shotgun/beanbag		//because beanbags are not bullets
	name = "beanbag"
	check_armour = "melee"
	damage = 20
	agony = 60
	embed = 0

//Should do about 80 damage at 1 tile distance (adjacent), and 50 damage at 3 tiles distance.
//Overall less damage than slugs in exchange for more damage at very close range and more embedding
/obj/item/projectile/bullet/pellet/shotgun
	name = "shrapnel"
	damage = 16
	pellets = 8
	range_step = 8
	spread_step = 10

/* "Rifle" rounds */

/obj/item/projectile/bullet/rifle
	penetrating = 1
	armor_penetration = 12
	armor_damage = 35

/obj/item/projectile/bullet/rifle/a762
	damage = 25

/obj/item/projectile/bullet/rifle/a556
	damage = 30

/obj/item/projectile/bullet/rifle/a145
	fire_sound = 'sound/weapons/gunshot/sniper.ogg'
	damage = 80
	stun = 3
	weaken = 3
	penetrating = 5
	hitscan = 1 //so the PTR isn't useless as a sniper weapon
	armor_penetration = 80
	armor_damage = 75

/* Miscellaneous */

/obj/item/projectile/bullet/suffocationbullet//How does this even work?
	name = "co bullet"
	damage = 20
	damage_type = OXY

/obj/item/projectile/bullet/cyanideround
	name = "poison bullet"
	damage = 40
	damage_type = TOX

/obj/item/projectile/bullet/burstbullet
	name = "exploding bullet"
	damage = 20
	embed = 0
	edge = 1

/obj/item/projectile/bullet/gyro
	fire_sound = 'sound/effects/explosion1.ogg'

/obj/item/projectile/bullet/gyro/on_hit(var/atom/target, var/blocked = 0)
	if(isturf(target))
		explosion(target, -1, 0, 2)
	..()

/obj/item/projectile/bullet/blank
	invisibility = 101
	damage = 1
	embed = 0

/* Practice */

/obj/item/projectile/bullet/pistol/practice
	damage = 5

/obj/item/projectile/bullet/rifle/a556/practice
	damage = 5

/obj/item/projectile/bullet/shotgun/practice
	name = "practice"
	damage = 5

/obj/item/projectile/bullet/pistol/cap
	name = "cap"
	invisibility = 101
	fire_sound = null
	damage_type = PAIN
	damage = 0
	nodamage = 1
	embed = 0
	sharp = 0

/obj/item/projectile/bullet/pistol/cap/process()
	loc = null
	qdel(src)

/obj/item/projectile/bullet/rock //spess dust
	name = "micrometeor"
	icon_state = "rock"
	damage = 40
	armor_penetration = 25
	kill_count = 255

/obj/item/projectile/bullet/rock/New()
	icon_state = "rock[rand(1,3)]"
	pixel_x = rand(-10,10)
	pixel_y = rand(-10,10)
	..()

//redline
/obj/item/projectile/bullet/pistol
	damage = 20
	penetrating = 0
	penetration_modifier = 0.1
	kill_count = 35
	agony = 10
	armor_penetration = 0
	armor_damage = 18

/obj/item/projectile/bullet/pistol/a22lr
	penetration_modifier = 0.05
	embed = 0
	agony = 10
	armor_penetration = 0
	armor_damage = 9

/obj/item/projectile/bullet/pistol/a22lr/New()
	damage = rand(10, 20)

/obj/item/projectile/bullet/pistol/a9mm
	penetration_modifier = 0.1
	agony = 15

/obj/item/projectile/bullet/pistol/a9mm/New()
	damage = rand(15, 30)
	penetrating = rand(0,1)

/obj/item/projectile/bullet/pistol/a40sw
	penetration_modifier = 0.4
	agony = 25
	armor_penetration = 0
	armor_damage = 20

/obj/item/projectile/bullet/pistol/a40sw/New()
	damage = rand(20, 50)

/obj/item/projectile/bullet/pistol/a44sw
	penetration_modifier = 0.4
	agony = 35

/obj/item/projectile/bullet/pistol/a44sw/New()
	damage = rand(35, 60)

/obj/item/projectile/bullet/pistol/a32sw
	penetration_modifier = 0.2
	agony = 25
	armor_penetration = 0
	armor_damage = 20

/obj/item/projectile/bullet/pistol/a32sw/New()
	damage = rand(25, 50)
