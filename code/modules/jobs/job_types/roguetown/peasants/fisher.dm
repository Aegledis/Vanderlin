/*
/datum/job/roguetown/fisher
	title = "Fisher"
	tutorial = "Abyssor is angry. Neglected and shunned, his boons yet shy from your hook. \
	Alone, in the stillness of nature, your bag is empty, and yet you fish. Pluck the children of god from their trance, \
	and stare into the water to see the reflection of a drowned body in the making."
	faction = "Station"
	flag = FISHER
	department_flag = PEASANTS
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Half-Orc"
	)
	outfit = /datum/outfit/job/roguetown/fisher
	min_pq = -100
	give_bank_account = 8
	total_positions = 5
	spawn_positions = 5
	display_order = JDO_FISHER

/datum/outfit/job/roguetown/fisher/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, pick(1,2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/fishing, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, pick(2,2,3), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		if(H.age == AGE_OLD)
			H.mind?.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
			H.change_stat("constitution", 1)
			H.change_stat("perception", 1)
		else
			H.change_stat("constitution", 2)
	if(H.gender == MALE)
		pants = /obj/item/clothing/under/roguetown/tights/random
		shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		neck = /obj/item/storage/belt/rogue/pouch/coins/poor
		head = /obj/item/clothing/head/roguetown/fisherhat
		armor = /obj/item/clothing/suit/roguetown/armor/gambeson/light/striped
		backl = /obj/item/storage/backpack/rogue/satchel
		belt = /obj/item/storage/belt/rogue/leather
		backr = /obj/item/fishingrod/fisher
		beltr = /obj/item/cooking/pan
		beltl = /obj/item/flint
		backpack_contents = list(/obj/item/rogueweapon/knife/villager = 1, /obj/item/natural/worms = 1, /obj/item/rogueweapon/shovel/small = 1)

	else
		shirt = /obj/item/clothing/suit/roguetown/shirt/dress/gen/random
		armor = /obj/item/clothing/suit/roguetown/armor/gambeson/light/striped
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		neck = /obj/item/storage/belt/rogue/pouch/coins/poor
		head = /obj/item/clothing/head/roguetown/fisherhat
		backl = /obj/item/storage/backpack/rogue/satchel
		backr = /obj/item/fishingrod/fisher
		belt = /obj/item/storage/belt/rogue/leather
		beltr = /obj/item/cooking/pan
		beltl = /obj/item/flint
		backpack_contents = list(/obj/item/rogueweapon/knife/hunting = 1, /obj/item/natural/worms = 1, /obj/item/rogueweapon/shovel/small = 1)
*/
