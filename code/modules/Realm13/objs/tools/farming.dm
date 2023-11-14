/obj/item/hoe
	name = "Hoe"
	desc = "A large tool for tiling soil."
	icon = 'icons/obj/mining.dmi'
	icon_state = "pickaxe_tribal"
	lefthand_file = 'icons/mob/inhands/equipment/mining_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/mining_righthand.dmi'
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	force = 8
	tool_behaviour = TOOL_HOE
	toolspeed = 0.1 //Can only dig ash and thats about it, out classed by the picks and drills no more!
	usesound = 'sound/effects/shovel_dig.ogg'
	throwforce = 4
	item_state = "pickaxe_tribal"
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=350)
	attack_verb = list("bashed", "bludgeoned", "thrashed", "whacked")
	sharpness = SHARP_EDGED

/obj/item/hoe/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 150, 40) //it's sharp, so it works, but barely.

/obj/item/hoe/suicide_act(mob/living/user)
	user.visible_message("<span class='suicide'>[user] begins digging their own grave!  It looks like [user.p_theyre()] trying to commit suicide!</span>")
	if(use_tool(user, user, 30, volume=50))
		return BRUTELOSS
	user.visible_message("<span class='suicide'>[user] couldn't do it!</span>")
	return SHAME