/datum/job/commoner
	exp_type = EXP_TYPE_COMMONER
	department_flag = COMMONER
	faction = FACTION_COMMONER


/datum/job/commoner/peasant
	title = "Peasant"
	flag = PEASANT
	total_positions = -1
	spawn_positions = -1
	description = "You are but a lowly simple peasant."
	supervisors = "Guildmaster"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/commoner/peasant

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/commoner/peasant,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/commoner/peasant,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/commoner/peasant,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/commoner/peasant,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/commoner/peasant,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/commoner/peasant,
		),
	)
	loadout_options = list()

/datum/outfit/job/commoner/peasant
	name = "peasant"
	jobtype = /datum/job/commoner/peasant

	id = null
	ears = null
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/melee/onehanded/knife/survival
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak,
		/obj/item/reagent_containers/hypospray/medipen/stimpak,
		/obj/item/reagent_containers/pill/radx,
		)

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit, \
		/obj/item/clothing/suit/f13/veteran, \
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer)