/datum/job/roguetown/monk
	title = "Acolyte"
	flag = MONK
	department_flag = CHURCHMEN
	faction = "Station"
	total_positions = 4
	spawn_positions = 4

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Aasimar"
	)
	tutorial = "Chores, exercise, prayer... and more chores. You are a humble acolyte at the Temple of the Ten not yet a trained guardian or an ordained priest. But who else would keep the fires lit and the floors clean?"
	allowed_patrons = 	list(/datum/patron/divine/astrata, /datum/patron/divine/noc, /datum/patron/divine/abyssor, /datum/patron/divine/xylix, /datum/patron/divine/pestra, /datum/patron/divine/malum, /datum/patron/divine/eora)
	outfit = /datum/outfit/job/roguetown/monk

	display_order = JDO_MONK
	give_bank_account = TRUE
	min_pq = -10
	bypass_lastclass = TRUE

/datum/outfit/job/roguetown/monk
	name = "Acolyte"
	jobtype = /datum/job/roguetown/monk
	allowed_patrons = 	list(/datum/patron/divine/astrata, /datum/patron/divine/noc, /datum/patron/divine/abyssor, /datum/patron/divine/xylix, /datum/patron/divine/pestra, /datum/patron/divine/malum, /datum/patron/divine/eora)

/datum/outfit/job/roguetown/monk/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/key/church
	r_hand = /obj/item/rogueweapon/polearm/woodstaff/quarterstaff
	backpack_contents = list(/obj/item/needle)
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			head = /obj/item/clothing/head/roguetown/roguehood/astrata
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/astrata
			wrists = /obj/item/clothing/wrists/roguetown/wrappings
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/astrata
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/divine/eora)
			head = /obj/item/clothing/head/roguetown/padded/rabbetvisage
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/eora
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/eora
			H.cmode_music = 'sound/music/cmode/church/CombatEora.ogg'
			H.virginity = FALSE
		if(/datum/patron/divine/noc)
			head = /obj/item/clothing/head/roguetown/roguehood/nochood
			neck = /obj/item/clothing/neck/roguetown/psycross/noc
			wrists = /obj/item/clothing/wrists/roguetown/nocwrappings
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/noc
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/divine/pestra)
			head = /obj/item/clothing/head/roguetown/roguehood/brown
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/pestra
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/green
			shoes = /obj/item/clothing/shoes/roguetown/sandals
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/phys
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/divine/abyssor)
			head = /obj/item/clothing/head/roguetown/padded/shrinekeeper
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/abyssor
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/shrinekeeper
			shirt = /obj/item/clothing/suit/roguetown/shirt/rags/monkgarb/random
			shoes = /obj/item/clothing/shoes/roguetown/sandals/geta
			wrists = /obj/item/clothing/wrists/roguetown/shrinekeeper
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
			H.mind?.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
		if(/datum/patron/divine/xylix)
			head = /obj/item/clothing/head/roguetown/roguehood/random
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/xylix
			shoes = /obj/item/clothing/shoes/roguetown/boots
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/plain
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
			H.mind?.adjust_skillrank(/datum/skill/misc/stealing, 1, TRUE)
		if(/datum/patron/divine/malum)
			head = /obj/item/clothing/head/roguetown/helmet/leather/minershelm/malumite
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/malum
			shoes = /obj/item/clothing/shoes/roguetown/boots
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/malum
			backpack_contents += /obj/item/rogueweapon/hammer/iron
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		else // Failsafe
			head = /obj/item/clothing/head/roguetown/roguehood/random
			neck = /obj/item/clothing/neck/roguetown/psycross/silver
			shoes = /obj/item/clothing/shoes/roguetown/boots
			armor = /obj/item/clothing/suit/roguetown/shirt/robe/plain
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'


	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE) // They get this and a wooden staff to defend themselves
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
		if(H.age == AGE_OLD)
			H.mind?.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("endurance", 2) // For casting lots of spells, and working long hours without sleep at the church
		H.change_stat("perception", -1)

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	C.grant_spells(H)
