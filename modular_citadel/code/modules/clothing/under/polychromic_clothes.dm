////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Polychromic Uniforms:																							 					  //
//																													 					  //
//		Polychromic clothes simply consist of 4 sprites: A base, unrecoloured sprite, and up to 3 greyscaled sprites. 					  //
//	In order to add more polychromic clothes, simply create a base sprite, and up to 3 recolourable overlays for it,  					  //
//	and then name them as follows: [name], [name]-primary, [name]-secondary, [name]-tertiary. The sprites should	  					  //
//	ideally be in 'modular_citadel/icons/polyclothes/item/uniform.dmi' and 'modular_citadel/icons/polyclothes/mob/uniform.dmi' for the	  //
//	worn sprites. After that, copy paste the code from any of the example clothes and 													  //
//	change the names around. [name] should go in BOTH icon_state and item_color. You can preset colors and disable	  					  //
//	any overlays using the self-explainatory vars.																	  					  //
//																													  					  //
//																								-Tori				  					  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/clothing/under/polychromic	//enables all three overlays to reduce copypasta and defines basic stuff
	name = "polychromic suit"
	desc = "For when you want to show off your horrible colour coordination skills."
	icon = 'modular_citadel/icons/polyclothes/item/uniform.dmi'
	alternate_worn_icon = 'modular_citadel/icons/polyclothes/mob/uniform.dmi'
	icon_state = "polysuit"
	item_color = "polysuit"
	item_state = "sl_suit"
	hasprimary = TRUE
	hassecondary = TRUE
	hastertiary = TRUE
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#FFFFFF"
	tertiary_color = "#808080"
	can_adjust = FALSE
	mutantrace_variation = NO_MUTANTRACE_VARIATION // because I'm too lazy to port these to digi-compatible and to prove a point from /tg/ whining - Pooj
	suit_style = NORMAL_SUIT_STYLE

/obj/item/clothing/under/polychromic/worn_overlays(isinhands, icon_file)	//this is where the main magic happens. Also mandates that ALL polychromic stuff MUST USE alternate_worn_icon
	. = ..()
	if(hasprimary | hassecondary | hastertiary)
		if(!isinhands)	//prevents the worn sprites from showing up if you're just holding them
			if(hasprimary)	//checks if overlays are enabled
				var/mutable_appearance/primary_worn = mutable_appearance(alternate_worn_icon, "[item_color]-primary")	//automagical sprite selection
				primary_worn.color = primary_color	//colors the overlay
				. += primary_worn	//adds the overlay onto the buffer list to draw on the mob sprite.
			if(hassecondary)
				var/mutable_appearance/secondary_worn = mutable_appearance(alternate_worn_icon, "[item_color]-secondary")
				secondary_worn.color = secondary_color
				. += secondary_worn
			if(hastertiary)
				var/mutable_appearance/tertiary_worn = mutable_appearance(alternate_worn_icon, "[item_color]-tertiary")
				tertiary_worn.color = tertiary_color
				. += tertiary_worn

/obj/item/clothing/under/polychromic/shirt	//COPY PASTE THIS TO MAKE A NEW THING
	name = "polychromic button-up shirt"
	desc = "A fancy button-up shirt made with polychromic threads."
	icon_state = "polysuit"
	item_color = "polysuit"
	item_state = "sl_suit"
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#353535"
	tertiary_color = "#353535"

/obj/item/clothing/under/polychromic/kilt
	name = "polychromic kilt"
	desc = "It's not a skirt!"
	icon_state = "polykilt"
	item_color = "polykilt"
	item_state = "kilt"
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#F08080"
	hastertiary = FALSE // so it doesn't futz with digilegs
	body_parts_covered = CHEST|GROIN|ARMS

/obj/item/clothing/under/polychromic/skirt
	name = "polychromic skirt"
	desc = "A fancy skirt made with polychromic threads."
	icon_state = "polyskirt"
	item_color = "polyskirt"
	item_state = "rainbow"
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#F08080"
	tertiary_color = "#808080"
	body_parts_covered = CHEST|GROIN|ARMS

/obj/item/clothing/under/polychromic/shorts
	name = "polychromic shorts"
	desc = "For ease of movement and style."
	icon_state = "polyshorts"
	item_color = "polyshorts"
	item_state = "rainbow"
	primary_color = "#353535" //RGB in hexcode
	secondary_color = "#808080"
	tertiary_color = "#808080"
	body_parts_covered = CHEST|GROIN|ARMS //why do shorts protect your arms and chest anyway? ~VF 2021

/obj/item/clothing/under/polychromic/jumpsuit
	name = "polychromic tri-tone jumpsuit"
	desc = "A fancy jumpsuit made with polychromic threads."
	icon_state = "polyjump"
	item_color = "polyjump"
	item_state = "rainbow"
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#808080"
	tertiary_color = "#FF3535"

/obj/item/clothing/under/polychromic/shortpants
	name = "polychromic athletic shorts"
	desc = "95% Polychrome, 5% Spandex!"
	icon_state = "polyshortpants"
	item_color = "polyshortpants"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#F08080"
	gender = PLURAL	//Because shortS
	body_parts_covered = GROIN	//Because there's no shirt included

/obj/item/clothing/under/polychromic/pleat
	name = "polychromic pleated skirt"
	desc = "A magnificent pleated skirt complements the woolen polychromatic sweater."
	icon_state = "polypleat"
	item_color = "polypleat"
	item_state = "rainbow"
	primary_color = "#8CC6FF" //RGB in hexcode
	secondary_color = "#808080"
	tertiary_color = "#FF3535"
	body_parts_covered = CHEST|GROIN|ARMS

/obj/item/clothing/under/polychromic/femtank
	name = "polychromic feminine tank top"
	desc = "Great for showing off your chest in style. Not recommended for males."
	icon_state = "polyfemtankpantsu"
	item_color = "polyfemtankpantsu"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FF3535"
	body_parts_covered = CHEST|GROIN|ARMS

/obj/item/clothing/under/polychromic/shortpants/pantsu
	name = "polychromic panties"
	desc = "Topless striped panties. Now with 120% more polychrome!"
	icon_state = "polypantsu"
	item_color = "polypantsu"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#FFFFFF" //RGB in hexcode
	secondary_color = "#8CC6FF"
	body_parts_covered = GROIN
	do_not_cover_butt = TRUE

/obj/item/clothing/under/polychromic/bottomless
	name = "polychromic bottomless shirt"
	desc = "Great for showing off your junk in dubious style."
	icon_state = "polybottomless"
	item_color = "polybottomless"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FF3535"
	body_parts_covered = CHEST|ARMS	//Because there's no bottom included

/obj/item/clothing/under/polychromic/shimatank
	name = "polychromic tank top"
	desc = "For those lazy summer days."
	icon_state = "polyshimatank"
	item_color = "polyshimatank"
	item_state = "rainbow"
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FFFFFF"
	tertiary_color = "#8CC6FF"
	body_parts_covered = CHEST|GROIN

/obj/item/clothing/under/polychromic/bikini
	name = "polychromic bikini"
	desc = "Perfect for summer."
	icon_state = "polybikini"
	item_color = "polybikini"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FFFFFF"
	body_parts_covered = CHEST|GROIN
	do_not_cover_butt = TRUE

/obj/item/clothing/under/polychromic/stripper
	name = "polychromic stripper outfit"
	desc = "Sexy with style."
	icon_state = "polystripper"
	item_color = "polystripper"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FFFFFF"
	body_parts_covered = CHEST|GROIN
	do_not_cover_butt = TRUE

/obj/item/clothing/under/polychromic/bulge
	name = "polychromic voluminous thong"
	desc = "What is this? Is there something hidden inside or is just to compensate the lack of?"
	icon_state = "polybulge"
	item_color = "polybulge"
	item_state = "rainbow"
	hastertiary = FALSE
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FF3535"
	body_parts_covered = GROIN
	do_not_cover_butt = TRUE

/obj/item/clothing/under/polychromic/shortsbra
	name = "Kromatic Shorts and Top"
	desc = "A pair of shorts and a bikini top! They even change color!"
	icon_state = "shortsbra"
	item_color = "shortsbra"
	item_state = "rainbow"
	primary_color = "#808080" //RGB in hexcode
	secondary_color = "#FFFFFF"
	hastertiary = FALSE
	body_parts_covered= CHEST|GROIN

/obj/item/clothing/under/polychromic/vsweater
	name = "virgin killer sweater"
	desc = "A sweater designed to be as provocative as possible, with almost all of the back missing, bairly hiding anything from that angle. Warning: Doesn't actually kill virgins."
	icon_state = "vkiller"
	item_color = "vkiller"
	item_state = "rainbow"
	primary_color = "#E1D6C9" //RGB in hexcode
	secondary_color = "#FFFFFF"
	hastertiary = FALSE
	body_parts_covered= CHEST|GROIN

/obj/item/clothing/under/polychromic/onepeice
	name = "polychromic swimsuit"
	desc = "Perfect for summer, and those who want to have something with a bit more material."
	icon_state = "onepeice"
	item_color = "onepeice"
	item_state = "rainbow"
	primary_color = "#010052" //RGB in hexcode
	secondary_color = "#eb7a7a"
	tertiary_color = "#ffffff"
	body_parts_covered = CHEST|GROIN
	do_not_cover_butt = TRUE

/obj/item/clothing/under/polychromic/flannel
	name = "polychromic flannel"
	desc = "A polychromatic 'dad shirt'."
	icon_state = "polyflan"
	item_color = "polyflan"
	item_state = "rainbow"
	primary_color = "#353535" //RGB in hexcode
	secondary_color = "#808080"
	tertiary_color = "#808080"
	body_parts_covered = CHEST|GROIN|ARMS
