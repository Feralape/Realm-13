/obj/machinery/hydroponics/soil/farmplot //Not actually hydroponics at all! Honk!
	name = "farmplot"
	desc = "Tiled soil for farming. <b>Alt-Click</b> to empty the soil's nutrients."
	icon = 'icons/Realm13/structures/farming.dmi'
	icon_state = "tiledsoil"
	circuit = null
	density = FALSE
	use_power = NO_POWER_USE
	flags_1 = NODECONSTRUCT_1
	unwrenchable = TRUE

/obj/machinery/hydroponics/soil/farmplot/update_icon_lights()
	return // Has no lights

/obj/machinery/hydroponics/soil/farmplot/attackby(obj/item/O, mob/user, params)
	if(istype(O, /obj/item/shovel) && !istype(O, /obj/item/shovel/spade)) //Doesn't include spades because of uprooting plants
		to_chat(user, "<span class='notice'>You clear up [src]!</span>")
		qdel(src)
	else
		return ..()