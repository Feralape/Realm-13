//Realm 13 general indestructible floor directory, inherits from fallout/turf/ground.dm




/turf/open/indestructible/ground/outside/realm
	icon = 'icons/Realm13/turf/open/ground.dmi'
	flags_1 = CAN_HAVE_NATURE | ADJACENCIES_OVERLAY
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	planetary_atmos = TRUE
	tiled_dirt = FALSE
	var/tillable = FALSE

/turf/open/indestructible/ground/outside/realm/dirt
	name = "dirt"
	desc = "Just dirt."
	icon_state = "dirt"
	slowdown = 0.4

/turf/open/indestructible/ground/outside/realm/grass
	name = "grass"
	desc = "Some grass."
	icon_state = "grass"
	slowdown = 0.4
	tillable = TRUE


/turf/open/indestructible/ground/outside/realm/grass/attackby(obj/item/O, mob/user, params)
	if(istype(O, /obj/item/hoe))
		if(locate(/obj/machinery/hydroponics/soil/farmplot) in src)
			to_chat(user, span_warning("This [src] has already been ploughed!"))
			return
		to_chat(user, "<span class='notice'>You plow the [src]!</span>")
		new /obj/machinery/hydroponics/soil/farmplot(src)
		return
	return ..()


/*
/obj/structure/table_frame/attackby(obj/item/I, mob/user, params)
	if(isstack(I))
		var/obj/item/stack/material = I
		if(material.tableVariant)
			if(material.get_amount() < 1)
				to_chat(user, span_warning("You need one [material.name] sheet to do this!"))
				return
			if(locate(/obj/structure/table) in loc)
				to_chat(user, span_warning("There's already a table built here!"))
				return
			to_chat(user, span_notice("You start adding [material] to [src]..."))
			if(!do_after(user, 2 SECONDS, target = src) || !material.use(1) || (locate(/obj/structure/table) in loc))
				return
			make_new_table(material.tableVariant)
		else if(istype(material, /obj/item/stack/sheet))
			if(material.get_amount() < 1)
				to_chat(user, span_warning("You need one sheet to do this!"))
				return
			if(locate(/obj/structure/table) in loc)
				to_chat(user, span_warning("There's already a table built here!"))
				return
			to_chat(user, span_notice("You start adding [material] to [src]..."))
			if(!do_after(user, 2 SECONDS, target = src) || !material.use(1) || (locate(/obj/structure/table) in loc))
				return
			var/list/material_list = list()
			if(material.material_type)
				material_list[material.material_type] = MINERAL_MATERIAL_AMOUNT
			make_new_table(/obj/structure/table/greyscale, material_list)
		return
	return ..()
*/

/turf/open/indestructible/ground/outside/realm/grassdirt
	name = "grass"
	desc = "grass spilling into dirt."
	icon_state = "grassdirt"
	slowdown = 0.4

/turf/open/indestructible/ground/outside/realm/grassdirtcorners
	name = "grass"
	desc = "grass spilling into dirt."
	icon_state = "grassdirtcorners"
	slowdown = 0.4