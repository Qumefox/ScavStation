/datum/job/tradeship_deckhand
	title = "Deck Hand"
	total_positions = -1
	spawn_positions = -1
	supervisors = "literally everyone, you bottom feeder"
	outfit_type = /decl/outfit/job/tradeship/hand
	alt_titles = list(
		"Cook" = /decl/outfit/job/tradeship/hand/cook,
		"Cargo Hand",
		"Passenger")
	department_types = list(/decl/department/civilian)
	economic_power = 1
	access = list()
	minimal_access = list()
	event_categories = list(ASSIGNMENT_GARDENER, ASSIGNMENT_JANITOR)

/datum/job/tradeship_deckhand/get_access()
	if(get_config_value(/decl/config/toggle/assistant_maint))
		return list(access_maint_tunnels)
	else
		return list()

/datum/job/tradeship_helmsman
	title = "Helmsman"
	total_positions = 1
	spawn_positions = -1
	supervisors = "Command, so dont mess up!"
	outfit_type = /decl/outfit/job/tradeship/hand
	min_skill = list( SKILL_PILOT    = SKILL_ADEPT )
	max_skill = list( SKILL_PILOT    = SKILL_MAX )
	skill_points = 10
	alt_titles = list("Helmsying")
	department_types = list(/decl/department/civilian)
	economic_power = 1
	access = list( access_heads )
	minimal_access = list( access_heads )