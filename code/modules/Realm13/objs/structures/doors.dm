//In the beginning of time, there was a door subtype called /dooor/ to allow a shitcode copypaste.
// "Fuck them copypastes, someone pls, make a system for dooor so no one gets to copypaste shit!"
//  - bartnixon
// "The system was always there, you just needed to use it ..."
//  - bauen1, the guy having to clean up the mess
// "I know what you feel, bro (and thx)."
//  - maxyo

// Ok, this is the main door directory. They open, they close, they take padlocks, easy. For ID locked doors use either airlocks for mechanical ones, or machinery/unpowered for secure wooden doors or cell doors.

/obj/structure/simple_door/realm
	name = "wooden door"
	desc = "It opens and closes - nothing out of the ordinary."
	icon = 'icons/fallout/structures/doors.dmi'
	icon_state = "house"
	opacity = TRUE
	density = TRUE
	anchored = TRUE
	layer = CLOSED_DOOR_LAYER
	explosion_block = 0.5

// -------------------------------------------------
//	WOODEN DOORS

// weathered white door
/obj/structure/simple_door/realm/


/obj/structure/simple_door/realm/pallisades
	name = "Palisade Door"
	icon = 'icons/Realm13/structures/palisade_gates.dmi'
	icon_state = "palisade"
	door_type = "palisade"
	can_hold_padlock = TRUE
	explosion_block = 50