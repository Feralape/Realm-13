/datum/job/court
	exp_type = EXP_TYPE_NOBLE
	department_flag = NOBLE
	faction = FACTION_NOBLES


/datum/job/court/castellan
	title = "Castle Castellan"
	flag = CASTELLAN
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Emperor"
	selection_color = "#aac1ee"

	outfit = /datum/outfit/job/court/castellan

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()

	display_order = JOB_DISPLAY_ORDER_CASTELLAN

/datum/job/court/castellan/get_access()
	return get_all_accesses()

/datum/job/court/castellan/announce(mob/living/carbon/human/H)
	..()
	SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/minor_announce, "Castellan [H.real_name] commands the castle!"))

/datum/outfit/job/court/castellan
	name = "Castle Castellan"
	jobtype = /datum/job/court/castellan

	id = /obj/item/card/id/gold
	belt = /obj/item/pda/captain
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/heads/captain/alt
	gloves = /obj/item/clothing/gloves/color/captain
	uniform =  /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/armor/vest/capcarapace
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/caphat

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	implants = list(/obj/item/implant/mindshield)
	accessory = /obj/item/clothing/accessory/medal/gold/captain

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

