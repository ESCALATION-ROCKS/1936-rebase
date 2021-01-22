//tools for carpentry. Hand tools.

/obj/item/weapon/carpentry
	icon = 'icons/obj/items.dmi'

/obj/item/weapon/carpentry/saw
	name = "carpenter's saw"
	desc = "A one person crosscut saw, used for sawing logs into reasonable lengths."
	icon_state = "saw"
	item_state = "saw"
	edge = 1
	w_class = 3.0
	force = 8
	slot_flags = SLOT_BACK
	sharpness = 5
	throwforce = 2
	attack_verb = list("cut", "sawed")
	matter = list(DEFAULT_WALL_MATERIAL = 1000, "wood" = 500)

/obj/item/weapon/carpentry/axe
	name = "woodsman's axe"
	desc = "A heavy axe designed for chopping down large trees."
	icon_state = "axe"
	item_state = "axe"
	sharp = 1
	edge = 1
	slot_flags = SLOT_BACK
	force = 15 //carpenters op plz nerf //this high because carpenters will need to defend themselves too
	sharpness = 6
	throwforce = 5
	attack_verb = list("slashed", "cut", "chopped", "hacked")
	w_class = 4.0 //suck it
	matter = list(DEFAULT_WALL_MATERIAL = 2000, "wood" = 1000)

/obj/item/weapon/carpentry/axe/legciaft
	name = "banderin"
	desc = "The standard of the 14th Company of the 6th flag of the 2nd Tercio of the Legion, mounted on the end of a halberd. A white skull sits atop a gold cross of burgundy upon a field of black. On the back side the skull is replaced by the symbol of the legion."
	icon_state = "14cia"
	item_state = "14cia"
	sharp = 1
	edge = 1
	force = 20 //carpenters op plz nerf //this high because carpenters will need to defend themselves too
	sharpness = 4
	throwforce = 1
	slot_flags = null
	attack_verb = list("cleaved", "slashed", "stabbed", "hacked", "attacked")
	w_class = 5 
	slowdown_general = 0.55