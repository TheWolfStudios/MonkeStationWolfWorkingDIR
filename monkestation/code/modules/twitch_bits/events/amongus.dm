/datum/twitch_event/amongus
	event_name = "Amongus Everyone"
	event_duration = 15 MINUTES
	event_flags = TWITCH_AFFECTS_ALL

/datum/twitch_event/amongus/ook
	event_name = "Amongus Ook"
	event_duration = 30 MINUTES
	event_flags = TWITCH_AFFECTS_STREAMER


/datum/twitch_event/amongus/run_event()
	. = ..()
	for(var/mob/living/target in targets)
		target.apply_displacement_icon(/obj/effect/distortion/large/amogus)
		target.AddElement(/datum/element/waddling)

/datum/twitch_event/amongus/end_event()
	for(var/mob/living/target in targets)
		var/obj/effect/distortion/large/amogus/located = locate() in target.vis_contents
		qdel(located)
		target.RemoveElement(/datum/element/waddling)
		target.clear_filters()
