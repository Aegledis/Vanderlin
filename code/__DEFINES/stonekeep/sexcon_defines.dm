GLOBAL_LIST_INIT(sex_actions, build_sex_actions())

#define SEX_ACTION(sex_action_type) GLOB.sex_actions[sex_action_type]

#define MAX_AROUSAL 150
#define PASSIVE_EJAC_THRESHOLD 100
#define ACTIVE_EJAC_THRESHOLD 100
#define SEX_MAX_CHARGE 300
#define CHARGE_FOR_CLIMAX 100
#define AROUSAL_HARD_ON_THRESHOLD 20
#define CHARGE_RECHARGE_RATE (CHARGE_FOR_CLIMAX / (5 MINUTES))
#define AROUSAL_TIME_TO_UNHORNY (5 SECONDS)
#define SPENT_AROUSAL_RATE (3 / (1 SECONDS))
#define IMPOTENT_AROUSAL_LOSS_RATE (3 / (1 SECONDS))


#define AROUSAL_HIGH_UNHORNY_RATE (1.5 / (1 SECONDS))
#define AROUSAL_MID_UNHORNY_RATE (0.4 / (1 SECONDS))
#define AROUSAL_LOW_UNHORNY_RATE (0.2 / (1 SECONDS))

#define MOAN_COOLDOWN 3 SECONDS

#define SEX_SPEED_LOW 1
#define SEX_SPEED_MID 2
#define SEX_SPEED_HIGH 3

#define SEX_SPEED_MIN 1
#define SEX_SPEED_MAX 3

#define SEX_FORCE_LOW 1
#define SEX_FORCE_MID 2
#define SEX_FORCE_HIGH 3

#define SEX_FORCE_MIN 1
#define SEX_FORCE_MAX 3

#define BLUEBALLS_GAIN_THRESHOLD 15
#define BLUEBALLS_LOOSE_THRESHOLD 10

/proc/build_sex_actions()
	. = list()
	for(var/path in typesof(/datum/sex_action))
		if(is_abstract(path))
			continue
		.[path] = new path()
	return .

/mob/living
	var/datum/sex_controller/sexcon


// borrow some space here ROGTODO
#define RACES_WITH_BEARD_GROWTH list(\
	/datum/species/human/northern,\
	/datum/species/human/halfelf,\
	/datum/species/dwarf/mountain,\
	/datum/species/tieberian,\
)

#define TRAIT_KAIZOKU					"Foglander Cultured"

/mob/living/carbon/human
	// Another Boolean. But this time entirely for Kaizoku content to define those whom Abyssariads considers 'impure', and for champions.
	var/burakumin = FALSE
	var/champion = FALSE

	//a var used for a rather niched power.
	var/purification = FALSE
