//Realm 13 general indestructible floor directory, inherits from fallout/turf/ground.dm




/turf/open/indestructible/ground/outside/realm
	icon = 'icons/Realm13/turf/open/ground.dmi'
	flags_1 = CAN_HAVE_NATURE | ADJACENCIES_OVERLAY
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	planetary_atmos = TRUE
	tiled_dirt = FALSE

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