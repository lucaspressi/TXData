<h1>md-drugs</h1>

<div align="center">
  <a href="https://discord.gg/sAMzrB4DDx">
    <img align="center" src="https://i.imgur.com/t65G9Z0.png" width="100">
  </a><br>
  <a href="https://discord.gg/sAMzrB4DDx">Mustache Scripts Discord</a><br>
</div>

<h1>Credits</h1>

- I used [Samuel's development](https://fivem.samueldev.shop/) Christmas script global states and prop spawning (with permission obtained prior to release) in the development process.

- Shout out to [STACHY225](https://babiczind.tebex.io/category/2103836) for working out the meth network animations!

- Huge credit to [Bostra](https://discord.gg/5ncbwMNq) for sharing free scripts and providing sanity checks during moments of confusion. Those cute mushrooms? His creation!

- Special thanks to [Feisty]() for the stunning visuals. If it looks good, she probably had a hand in it.

- Special shoutout to [Beta Testers]()Your feedback has been invaluable!

- Big Credit to [Bostra](https://discord.gg/5ncbwMNq). if you have been around you may have seen him post some free scripts and help people, There was definetly times I dm'd him saying what the fuck am I doing and he helped keep me sane. He also made the cute mushrooms!

- [Jim's Tebex](https://jimathy666.tebex.io/) for putting out open source resources that I was able to break and fix and learn how to code

- [jixeltay](https://jixeltay.tebex.io/category/scripts) for putting out banger after banger. These people help the community learn so much more

- Our partner [1of1 Servers]( https://1of1servers.com/) and their [discord](https://discord.gg/1of1servers) for their amazing server hosting! absolutely top notch.

<h1>Special Thanks To Kamaryn For The Preview</h1>
- Thanks to Kamaryn for this [install guide video](https://youtu.be/zvuYnUfrqaA?si=FGJuBO5krZMC14Nd)

- join their [discord](https://discord.gg/KPRmZqFS)  for other videos updates.

<h1>Dependencies</h1>
- [Ox Lib](https://github.com/overextended/ox_lib/releases/tag/v3.12.0) 

- [qb-target](https://github.com/qbcore-framework/qb-target) **or** ox_target
  
- emote script that uses the animations event (rpemotes, dpemotes, scully emotes all work)



- GAME BUILD 2944 OR LATER



<h1>Preview</h1>

- [Preview link](https://www.youtube.com/watch?v=I_x7_oz_SAU)

<h1>How to install like a fuckin boss</h1>

- **STEP 1**
	- Add the following Items to `qb-core/shared/items.lua` and - Add items images to your inventory script

```lua

------------------ md-drugs
	coke 		 	 	 	     = {name = "coke",           					label = "Raw Cocaine", 				    weight = 1000,		type = "item", 		image = "coke.png", 				    unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Raw Cocaine"},
    coca_leaf 		 	 	 	 = {name = "coca_leaf",           				label = "Cocaine leaves",	 		    weight = 1500,		type = "item", 		image = "coca_leaf.png", 			    unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Cocaine leaves that must be processed !"},
    poppyresin 		 	 	     = {name = "poppyresin",           				label = "Poppy resin",	 			    weight = 2000, 		type = "item", 		image = "poppyresin.png", 			    unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "It sticks to your fingers when you handle it."},
    heroin 		 	 	 	     = {name = "heroin",           					label = "Weak Heroin Powder",	 		weight = 500, 		type = "item", 		image = "loosecoke.png", 				unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Dragon Chasin?"},
    bakingsoda 		 	 	     = {name = "bakingsoda",           		    	label = "Baking Soda",	 		        weight = 300, 		type = "item", 		image = "bakingsoda.png", 		        unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Household Baking Soda!"},
    loosecoke 			 		 = {name = 'loosecoke', 			  			label = 'loose coke', 				    weight = 100, 		type = 'item', 		image = 'loosecoke.png', 			    unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil,   description = 'Cut Cocaine'},
    loosecokestagetwo 			 = {name = 'loosecokestagetwo', 				label = 'More Pure Loose Coke', 		weight = 100, 		type = 'item', 		image = 'loosecokestagetwo.png', 		unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil,   description = 'Cut Cocaine'},
    loosecokestagethree 		 = {name = 'loosecokestagethree', 				label = 'Purest Loose Coke', 			weight = 100, 		type = 'item', 		image = 'loosecokestagethree.png', 		unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil,   description = 'Cut Cocaine'},
    cokebaggystagetwo 			 = {name = 'cokebaggystagetwo', 				label = 'Bag of Good Coke', 			weight = 100, 		type = 'item', 		image = 'cocaine_baggystagetwo.png', 	unique = false, 	useable = true, 	shouldClose = true,    combinable = nil,   description = 'Bagged Cocaine'},
    cokebaggystagethree 		 = {name = 'cokebaggystagethree', 				label = 'Bag of Great Coke', 			weight = 100, 		type = 'item', 		image = 'cocaine_baggystagethree.png', 	unique = false, 	useable = true, 	shouldClose = true,    combinable = nil,   description = 'Bagged Cocaine'},
    cokestagetwo 		 	 	 = {name = "cokestagetwo",           			label = "Better Raw Cocaine", 			weight = 100,		type = "item", 		image = "cokestagetwo.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Raw cocaine"},
    cokestagethree 		 	 	 = {name = "cokestagethree",           			label = "Best Raw Cocaine", 			weight = 100,		type = "item", 		image = "cokestagethree.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   description = "Raw cocaine"},
     
     ----md-lsd
    lysergic_acid 			 	 = {name = 'lysergic_acid', 			  		label = 'Lysergic Acid', 				weight = 100, 		type = 'item', 		image = 'lysergic_acid.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Acid to make acid?'},
    diethylamide 			 	 = {name = 'diethylamide', 			  			label = 'Diethylamide', 				weight = 100, 		type = 'item', 		image = 'diethylamide.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'die? I sure hope not!'},
    lsd_one_vial 			 	 = {name = 'lsd_one_vial', 			  			label = 'Tier 1 LSD Vial', 			    weight = 100, 		type = 'item', 		image = 'lsd_one_vial.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    lsd_vial_two 			 	 = {name = 'lsd_vial_two', 			  			label = 'Tier 2 LSD Vial', 	            weight = 100, 		type = 'item', 		image = 'lsd_vial_two.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    lsd_vial_three 			 	 = {name = 'lsd_vial_three', 			  		label = 'Tier 3 LSD Vial', 				weight = 100, 		type = 'item', 		image = 'lsd_vial_three.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    lsd_vial_four 			 	 = {name = 'lsd_vial_four', 			  		label = 'Tier 4 LSD Vial', 				weight = 100, 		type = 'item', 		image = 'lsd_vial_four.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    lsd_vial_five 			 	 = {name = 'lsd_vial_five', 			  		label = 'Tier 5 LSD Vial', 				weight = 100, 		type = 'item', 		image = 'lsd_vial_five.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    lsd_vial_six 			 	 = {name = 'lsd_vial_six', 			  			label = 'Tier 6 LSD Vial', 				weight = 100, 		type = 'item', 		image = 'lsd_vial_six.png', 			unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Vial Of LSD'},
    tab_paper 			 		 = {name = 'tab_paper', 			  			label = 'Tab Paper', 					weight = 100, 		type = 'item', 		image = 'tab_paper.png', 			    unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil, 	description = 'Paper To Dip LSD On'},
    smileyfacesheet 			 = {name = 'smileyfacesheet', 			  		label = 'Smiley Face Sheet', 			weight = 100, 		type = 'item', 		image = 'smileysheet.png', 			    unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'You Are Cute When You Smile - Creepy Dudes'},
    wildcherrysheet 			 = {name = 'wildcherrysheet', 			  		label = 'Wild Cherry Sheet', 			weight = 100, 		type = 'item', 		image = 'wildcherrysheet.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'Lets Get Wild'},
    yinyangsheet 			     = {name = 'yinyangsheet', 			  			label = 'Yin and Yang Sheet', 			weight = 100, 		type = 'item', 		image = 'yinyangsheet.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'All Together In Harmony'},
    pineapplesheet 			 	 = {name = 'pineapplesheet', 			  		label = 'Pineapple Sheet', 				weight = 100, 		type = 'item', 		image = 'pineapplesheet.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'When You Hold It Upside It Means Something Different'},
    bartsheet 			 		 = {name = 'bartsheet', 			  			label = 'Cluckin Sheet', 			    weight = 100, 		type = 'item', 		image = 'bartsheet.png', 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'A Cluckin Good Time'},
    gratefuldeadsheet 			 = {name = 'gratefuldeadsheet', 			  	label = 'Maze Sheet', 			        weight = 100, 		type = 'item', 		image = 'gratefuldeadsheet.png', 		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'I heard Its aMAZEing.. get it.. ill stop now'},
    smiley_tabs 			     = {name = 'smiley_tabs', 			  			label = 'Smiley tabs', 					weight = 100, 		type = 'item', 		image = 'smiley_tabs.png', 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'You Are Cute When You Smile - Creepy Dudes'},
    wildcherry_tabs 			 = {name = 'wildcherry_tabs', 			  		label = 'Wild Cherry Tabs', 			weight = 100, 		type = 'item', 		image = 'wildcherry_tabs.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'Lets Get Wild'},
    yinyang_tabs 			     = {name = 'yinyang_tabs', 			  			label = 'Yin and Yang Tabs', 			weight = 100, 		type = 'item', 		image = 'yinyang_tabs.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'All Together In Harmony'},
    pineapple_tabs 			     = {name = 'pineapple_tabs', 			  		label = 'Pineapple Tabs', 				weight = 100, 		type = 'item', 		image = 'pineapple_tabs.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'When You Hold It Upside It Means Something Different'},
    bart_tabs 			 		 = {name = 'bart_tabs', 			  			label = 'Cluckin Tabs', 			    weight = 100, 		type = 'item', 		image = 'bart_tabs.png', 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'A Cluckin Good Time'},
    gratefuldead_tabs 			 = {name = 'gratefuldead_tabs', 			  	label = 'Maze Tabs', 			        weight = 100, 		type = 'item', 		image = 'gratefuldead_tabs.png', 		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'I heard Its aMAZEing.. get it.. ill stop now'},
    lsdlabkit 			 		 = {name = 'lsdlabkit', 			  			label = 'LSD Mixing Table', 			weight = 1000, 		type = 'item', 		image = 'labkit.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = 'How Can A Big Ass Table Fit In One Slot'},
   -- dirtylsdlabkit 			 = {name = 'dirtylsdlabkit', 			  		label = 'Dirty LSD Mixing Table', 		weight = 1000, 		type = 'item', 		image = 'labkit_dirty.png', 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	description = ''},
    
    ---- md heroin
    heroinstagetwo 		 	 	 = {name = "heroinstagetwo",           			label = "Better Heroin",	 		weight = 250, 		type = "item", 		image = "cokestagetwo.png", 				unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Raw Heroin"},
    heroinstagethree 		 	 = {name = "heroinstagethree",           		label = "Best Heroin",	 			weight = 250, 		type = "item", 		image = "cokestagethree.png", 				unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Raw Heroin"},
    heroincut 		 	 	 	 = {name = "heroincut",           				label = "Cut Heroin",	 			weight = 250, 		type = "item", 		image = "loosecoke.png", 					unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   	 description = "Cut Heroin"},
    heroincutstagetwo 		 	 = {name = "heroincutstagetwo",           		label = "Better Cut Heroin",	 	weight = 250, 		type = "item", 		image = "loosecokestagetwo.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   	 description = "Cut Heroin"},
    heroincutstagethree 		 = {name = "heroincutstagethree",           	label = "Best Cut Heroin",	 		weight = 250, 		type = "item", 		image = "loosecokestagethree.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,  	 description = "Cut Heroin"},
    heroinlabkit 		 	 	 = {name = "heroinlabkit",           			label = "Heroin Lab Kit",	 		weight = 250, 		type = "item", 		image = "labkit.png", 						unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,   	 description = "How Can A Big Ass Table Fit In One Slot"},
   -- dirtyheroinlabkit 		 = {name = "dirtyheroinlabkit",           		label = "Dirty heroin Lab Kit",	 	weight = 250, 		type = "item", 		image = "labkit_dirty.png", 				unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,   	 description = ""},
    heroinvial 		 	 	 	 = {name = "heroinvial",           				label = "Vial Of Heroin",	 		weight = 250, 		type = "item", 		image = "heroin.png", 						unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Hmm, Maybe A Needle Can Help"},
    heroinvialstagetwo 		 	 = {name = "heroinvialstagetwo",           		label = "Better Vial of Heroin",	weight = 250, 		type = "item", 		image = "heroinstagetwo.png", 				unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Hmm, Maybe A Needle Can Help"},
    heroinvialstagethree 		 = {name = "heroinvialstagethree",           	label = "Best Vial Of Heroin",	 	weight = 250, 		type = "item", 		image = "heroinstagethree.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Hmm, Maybe A Needle Can Help"},
    heroin_ready 		 	 	 = {name = "heroin_ready",           			label = "Heroin Syringe",	 		weight = 250, 		type = "item", 		image = "heroin_ready.png", 				unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,   	 description = "Go On, Chase The Dragon"},
    heroin_readystagetwo 		 = {name = "heroin_readystagetwo",           	label = "Heroin Syringe 2",	 		weight = 250, 		type = "item", 		image = "heroin_readystagetwo.png", 		unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,     description = "Go On, Chase The Dragon"},
    heroin_readystagethree 		 = {name = "heroin_readystagethree",           	label = "Heroin Syringe 3",	 		weight = 250, 		type = "item", 		image = "heroin_readystagethree.png", 		unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,     description = "Go On, Chase The Dragon"},
    emptyvial 				     = {name = "emptyvial", 			    	    label = "empty vial", 			    weight = 100, 		type = "item", 		image = "emptyvial.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,	 description = "Hmm, What Can Go In This?"},
    needle 		 				 = {name = "needle",           					label = "Syringe",	 				weight = 250, 		type = "item", 		image = "syringe.png", 						unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "I Swear Officer, Its For Diabetes"},
    ---- md crack
    crackrock 		 	 	 	 = {name = "crackrock",           				label = "Crack Rock",	 			weight = 250, 		type = "item", 		image = "crackrock1.png", 					unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "This Isnt The Rock The Hippie Girl Told Me About"},
    crackrockstagetwo 		 	 = {name = "crackrockstagetwo",           		label = "Better Crack Rock",	 	weight = 250, 		type = "item", 		image = "crackrock2.png", 					unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "This Rocks!"},
    crackrockstagethree 		 = {name = "crackrockstagethree",           	label = "Best Crack Rock",	 		weight = 250, 		type = "item", 		image = "crackrock3.png", 					unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,   	 description = "This Rocks!"},
    baggedcracked 		 	 	 = {name = "baggedcracked",           			label = "Bag Of Crack",	 			weight = 250, 		type = "item", 		image = "crackbag1.png", 					unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,   	 description = "Bags Of Crack"},
    baggedcrackedstagetwo 		 = {name = "baggedcrackedstagetwo",           	label = "Better Bag Of Crack",	 	weight = 250, 		type = "item", 		image = "crackbag2.png", 					unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,  	 description = "Bags Of Crack"},
    baggedcrackedstagethree 	 = {name = "baggedcrackedstagethree",           label = "Best Bag Of Crack",	 	weight = 250, 		type = "item", 		image = "crackbag3.png", 					unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,  	 description = "Bags Of Crack"},
    ---- shrooms 
    shrooms 					 = {name = "shrooms",          					label = "Shrooms",	 				weight = 250, 		type = "item", 		image = "shrooms.png", 						unique = false, 	useable = true, 	shouldClose = false,   combinable = nil,  	 description = "Holy Shit ake mushroom"},
    -- pharma
    prescription_pad 		     = {name = 'prescription_pad', 			    	label = 'Prescription Pad',        	weight = 10,        type = 'item',      image = 'prescriptionpad.png',         		unique = true,    	useable = true,     shouldClose = false,   combinable = nil,   	 description = 'Write Your Prescriptions here'},
    vicodin_prescription 		 = {name = "vicodin_prescription",        		label = "Vicie Prescription",	 	weight = 250, 		type = "item", 		image = "adderalprescription.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "If Only This Helped With The Pain inside"},
    adderal_prescription 		 = {name = "adderal_prescription",        		label = "Mdderal Prescription",	 	weight = 250, 		type = "item", 		image = "adderalprescription.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "I CAN DO EVERYTHING"},
    morphine_prescription 		 = {name = "morphine_prescription",       		label = "Morphin Prescription",	    weight = 250, 		type = "item", 		image = "adderalprescription.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "I Cant Feel Anything"},
    xanax_prescription 		 	 = {name = "xanax_prescription",          		label = "Zany Prescription",	 	weight = 250, 		type = "item", 		image = "adderalprescription.png", 			unique = false, 	useable = false, 	shouldClose = false,   combinable = nil,     description = "Ahhh Sweet Comfort"},
    adderal 			    	 = {name = 'adderal', 			  		 		label = 'Madderal', 				weight = 100, 		type = 'item', 		image = 'adderal.png', 						unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = 'If Only This Helped With The Pain inside'},
    vicodin 			    	 = {name = 'vicodin', 			  		 		label = 'Vicie', 					weight = 100, 		type = 'item', 		image = 'vicodin.png', 						unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = "I CAN DO EVERYTHING"},
    morphine 			    	 = {name = 'morphine', 			  		 		label = 'Morphin', 					weight = 100, 		type = 'item', 		image = 'morphine.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = "I Cant Feel Anything"},
    xanax 			     		 = {name = 'xanax', 			  		 		label = 'Zany', 					weight = 100, 		type = 'item', 		image = 'xanax.png', 						unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = "Ahhh Sweet Comfort"},
    adderalbottle 			     = {name = 'adderalbottle', 			  		label = 'Madderal Bottle', 			weight = 100, 		type = 'item', 		image = 'pillbottle.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = 'Bottles Of Good Drugs'},
    vicodinbottle 			     = {name = 'vicodinbottle', 			  		label = 'Vicie Bottle', 			weight = 100, 		type = 'item', 		image = 'pillbottle.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = 'Bottles Of Good Drugs'},
    morphinebottle 			     = {name = 'morphinebottle', 			  		label = 'Morphin Bottle', 			weight = 100, 		type = 'item', 		image = 'pillbottle.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = 'Bottles Of Good Drugs'},
    xanaxbottle 			     = {name = 'xanaxbottle', 			  			label = 'Zany Bottle', 				weight = 100, 		type = 'item', 		image = 'pillbottle.png', 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil, 	 description = 'Bottle Of Good Drugs'},
    
	---------------- XTC		
    isosafrole 			 		 = {name = 'isosafrole', 			  			label = 'isosafrole', 				weight = 100, 		type = 'item', 		image = 'isosafrole.png', 					unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil,	  description = ''},
    mdp2p 			 			 = {name = 'mdp2p', 			  				label = 'mdp2p', 					weight = 100, 		type = 'item', 		image = 'mdp2p.png', 						unique = false, 	useable = false, 	shouldClose = true,	   combinable = nil,	  description = ''},
    raw_xtc 				     = {name = "raw_xtc", 			    			label = "Raw XTC", 			       	weight = 100, 		type = "item", 		image = "raw_xtc.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    singlepress 				 = {name = "singlepress", 			    		label = "Single Pill Press", 		weight = 100, 		type = "item", 		image = "pillpress.png", 		   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_xtc 				     = {name = "white_xtc", 			    		label = "1 Stack White XTC", 		weight = 100, 		type = "item", 		image = "unstampedwhite.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_xtc2 				     = {name = "white_xtc2", 			    		label = "2 Stack White XTC", 		weight = 100, 		type = "item", 		image = "unstampedwhite.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_xtc3 				     = {name = "white_xtc3", 			    		label = "3 Stack White XTC", 		weight = 100, 		type = "item", 		image = "unstampedwhite.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_xtc4 				     = {name = "white_xtc4", 			    		label = "4 Stack White XTC", 		weight = 100, 		type = "item", 		image = "unstampedwhite.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_xtc 				     = {name = "red_xtc", 			    			label = "1 Stack Red XTC", 		    weight = 100, 		type = "item", 		image = "unstampedred.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_xtc2 				     = {name = "red_xtc2", 			    			label = "2 Stack Red XTC", 			weight = 100, 		type = "item", 		image = "unstampedred.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_xtc3 				     = {name = "red_xtc3", 			    			label = "3 Stack Red XTC", 		    weight = 100, 		type = "item", 		image = "unstampedred.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_xtc4 				     = {name = "red_xtc4", 			    			label = "4 Stack Red XTC", 			weight = 100, 		type = "item", 		image = "unstampedred.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_xtc 				     = {name = "orange_xtc", 			    		label = "1 Stack Orange XTC", 	    weight = 100, 		type = "item", 		image = "unstampedorange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_xtc2 				 = {name = "orange_xtc2", 			   			label = "2 Stack Orange XTC", 		weight = 100, 		type = "item", 		image = "unstampedorange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_xtc3 				 = {name = "orange_xtc3", 			   			label = "3 Stack Orange XTC", 		weight = 100, 		type = "item", 		image = "unstampedorange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_xtc4 				 = {name = "orange_xtc4", 			   			label = "4 Stack Orange XTC", 		weight = 100, 		type = "item", 		image = "unstampedorange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_xtc 				     = {name = "blue_xtc", 			    			label = "1 Stack Blue XTC", 		weight = 100, 		type = "item", 		image = "unstampedblue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_xtc2 				     = {name = "blue_xtc2", 			    		label = "2 Stack Blue XTC", 		weight = 100, 		type = "item", 		image = "unstampedblue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_xtc3 				     = {name = "blue_xtc3", 			    		label = "3 Stack Blue XTC", 		weight = 100, 		type = "item", 		image = "unstampedblue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_xtc4 				     = {name = "blue_xtc4", 			    		label = "4 Stack Blue XTC", 		weight = 100, 		type = "item", 		image = "unstampedblue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_playboys 				 = {name = "white_playboys", 			    	label = "1 Stack White Fruit", 		weight = 100, 		type = "item", 		image = "playboy_white.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_playboys2 			 = {name = "white_playboys2", 			    	label = "2 Stack White Fruit", 		weight = 100, 		type = "item", 		image = "playboy_white.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_playboys3 			 = {name = "white_playboys3", 			    	label = "3 Stack White Fruit", 		weight = 100, 		type = "item", 		image = "playboy_white.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_playboys4 			 = {name = "white_playboys4", 			    	label = "4 Stack White Fruit", 		weight = 100, 		type = "item", 		image = "playboy_white.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_playboys 				 = {name = "blue_playboys", 			    	label = "1 Stack blue Fruit", 		weight = 100, 		type = "item", 		image = "playboy_blue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_playboys2 				 = {name = "blue_playboys2", 			    	label = "2 Stack blue Fruit", 		weight = 100, 		type = "item", 		image = "playboy_blue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_playboys3 				 = {name = "blue_playboys3", 			    	label = "3 Stack blue Fruit", 		weight = 100, 		type = "item", 		image = "playboy_blue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_playboys4 				 = {name = "blue_playboys4", 			    	label = "4 Stack blue Fruit", 		weight = 100, 		type = "item", 		image = "playboy_blue.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_playboys 				 = {name = "red_playboys", 			    		label = "1 Stack red Fruit", 		weight = 100, 		type = "item", 		image = "playboy_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_playboys2 				 = {name = "red_playboys2", 			    	label = "2 Stack red Fruit", 	    weight = 100, 		type = "item", 		image = "playboy_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_playboys3 				 = {name = "red_playboys3", 			    	label = "3 Stack red Fruit", 		weight = 100, 		type = "item", 		image = "playboy_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_playboys4 				 = {name = "red_playboys4", 			    	label = "4 Stack red Fruit", 		weight = 100, 		type = "item", 		image = "playboy_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_playboys 			 = {name = "orange_playboys", 			    	label = "1 Stack orange Fruit", 	weight = 100, 		type = "item", 		image = "playboy_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_playboys2 			 = {name = "orange_playboys2", 			    	label = "2 Stack orange Fruit",     weight = 100, 		type = "item", 		image = "playboy_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_playboys3 			 = {name = "orange_playboys3", 			    	label = "3 Stack orange Fruit", 	weight = 100, 		type = "item", 		image = "playboy_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_playboys4 			 = {name = "orange_playboys4", 			    	label = "4 Stack orange Fruit", 	weight = 100, 		type = "item", 		image = "playboy_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_aliens 				 = {name = "white_aliens", 			    		label = "1 Stack White aliens", 	weight = 100, 		type = "item", 		image = "alien_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_aliens2 				 = {name = "white_aliens2", 			    	label = "2 Stack White aliens",     weight = 100, 		type = "item", 		image = "alien_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_aliens3 				 = {name = "white_aliens3", 			    	label = "3 Stack White aliens", 	weight = 100, 		type = "item", 		image = "alien_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_aliens4 				 = {name = "white_aliens4", 			    	label = "4 Stack White aliens", 	weight = 100, 		type = "item", 		image = "alien_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_aliens 				 = {name = "blue_aliens", 			    		label = "1 Stack blue aliens", 		weight = 100, 		type = "item", 		image = "alien_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_aliens2 				 = {name = "blue_aliens2", 			    		label = "2 Stack blue aliens", 	    weight = 100, 		type = "item", 		image = "alien_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_aliens3 				 = {name = "blue_aliens3", 			    		label = "3 Stack blue aliens", 		weight = 100, 		type = "item", 		image = "alien_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_aliens4 				 = {name = "blue_aliens4", 			    		label = "4 Stack blue aliens", 		weight = 100, 		type = "item", 		image = "alien_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_aliens 					 = {name = "red_aliens", 			    		label = "1 Stack red aliens", 		weight = 100, 		type = "item", 		image = "alien_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_aliens2 				 = {name = "red_aliens2", 			    		label = "2 Stack red aliens", 		weight = 100, 		type = "item", 		image = "alien_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_aliens3 				 = {name = "red_aliens3", 			    		label = "3 Stack red aliens", 		weight = 100, 		type = "item", 		image = "alien_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_aliens4 				 = {name = "red_aliens4", 			    		label = "4 Stack red aliens", 		weight = 100, 		type = "item", 		image = "alien_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_aliens 				 = {name = "orange_aliens", 			    	label = "1 Stack orange aliens", 	weight = 100, 		type = "item", 		image = "alien_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_aliens2 				 = {name = "orange_aliens2", 			    	label = "2 Stack orange aliens", 	weight = 100, 		type = "item", 		image = "alien_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_aliens3 				 = {name = "orange_aliens3", 			    	label = "3 Stack orange aliens", 	weight = 100, 		type = "item", 		image = "alien_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_aliens4 				 = {name = "orange_aliens4", 			    	label = "4 Stack orange aliens", 	weight = 100, 		type = "item", 		image = "alien_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_pl 					 = {name = "white_pl", 			    			label = "1 Stack White pl", 		weight = 100, 		type = "item", 		image = "PL_white.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_pl2 					 = {name = "white_pl2", 			    		label = "2 Stack White pl", 		weight = 100, 		type = "item", 		image = "PL_white.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_pl3 					 = {name = "white_pl3", 			    		label = "3 Stack White pl", 		weight = 100, 		type = "item", 		image = "PL_white.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_pl4 					 = {name = "white_pl4", 			    		label = "4 Stack White pl", 		weight = 100, 		type = "item", 		image = "PL_white.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_pl 					 = {name = "blue_pl", 			    			label = "1 Stack blue pl", 		 	weight = 100, 		type = "item", 		image = "PL_blue.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_pl2 					 = {name = "blue_pl2", 			    			label = "2 Stack blue pl", 			weight = 100, 		type = "item", 		image = "PL_blue.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_pl3 					 = {name = "blue_pl3", 			    			label = "3 Stack blue pl", 			weight = 100, 		type = "item", 		image = "PL_blue.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_pl4 					 = {name = "blue_pl4", 			    			label = "4 Stack blue pl", 			weight = 100, 		type = "item", 		image = "PL_blue.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_pl 						 = {name = "red_pl", 			    			label = "1 Stack red pl", 			weight = 100, 		type = "item", 		image = "PL_red.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_pl2 					 = {name = "red_pl2", 			    			label = "2 Stack red pl", 			weight = 100, 		type = "item", 		image = "PL_red.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_pl3 					 = {name = "red_pl3", 			    			label = "3 Stack red pl", 			weight = 100, 		type = "item", 		image = "PL_red.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_pl4 					 = {name = "red_pl4", 			    			label = "4 Stack red pl", 			weight = 100, 		type = "item", 		image = "PL_red.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_pl 					 = {name = "orange_pl", 			    		label = "1 Stack orange pl", 		weight = 100, 		type = "item", 		image = "PL_orange.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_pl2 					 = {name = "orange_pl2", 			    		label = "2 Stack orange pl", 		weight = 100, 		type = "item", 		image = "PL_orange.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_pl3 					 = {name = "orange_pl3", 			    		label = "3 Stack orange pl", 		weight = 100, 		type = "item", 		image = "PL_orange.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_pl4 					 = {name = "orange_pl4", 			    		label = "4 Stack orange pl", 		weight = 100, 		type = "item", 		image = "PL_orange.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_trolls 				 = {name = "white_trolls", 			    		label = "1 Stack White trolls", 	weight = 100, 		type = "item", 		image = "troll_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_trolls2 				 = {name = "white_trolls2", 			    	label = "2 Stack White trolls", 	weight = 100, 		type = "item", 		image = "troll_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_trolls3 				 = {name = "white_trolls3", 			    	label = "2 Stack White trolls", 	weight = 100, 		type = "item", 		image = "troll_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_trolls4 				 = {name = "white_trolls4", 			    	label = "3 Stack White trolls", 	weight = 100, 		type = "item", 		image = "troll_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_trolls 				 = {name = "blue_trolls", 			    		label = "1 Stack blue trolls", 		weight = 100, 		type = "item", 		image = "troll_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_trolls2 				 = {name = "blue_trolls2", 			    		label = "2 Stack blue trolls", 	    weight = 100, 		type = "item", 		image = "troll_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_trolls3 				 = {name = "blue_trolls3", 			    		label = "3 Stack blue trolls",      weight = 100, 		type = "item", 		image = "troll_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_trolls4 				 = {name = "blue_trolls4", 			    		label = "4 Stack blue trolls", 		weight = 100, 		type = "item", 		image = "troll_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_trolls 					 = {name = "red_trolls", 			    		label = "1 Stack red trolls", 		weight = 100, 		type = "item", 		image = "troll_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_trolls2 				 = {name = "red_trolls2", 			    		label = "2 Stack red trolls", 		weight = 100, 		type = "item", 		image = "troll_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_trolls3 				 = {name = "red_trolls3", 			    		label = "3 Stack red trolls", 		weight = 100, 		type = "item", 		image = "troll_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_trolls4 				 = {name = "red_trolls4", 			    		label = "4 Stack red trolls", 		weight = 100, 		type = "item", 		image = "troll_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_trolls 				 = {name = "orange_trolls", 			    	label = "1 Stack orange trolls", 	weight = 100, 		type = "item", 		image = "troll_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_trolls2 				 = {name = "orange_trolls2", 			    	label = "2 Stack orange trolls", 	weight = 100, 		type = "item", 		image = "troll_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_trolls3 				 = {name = "orange_trolls3", 			    	label = "3 Stack orange trolls", 	weight = 100, 		type = "item", 		image = "troll_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_trolls4 				 = {name = "orange_trolls4", 			    	label = "4 Stack orange trolls", 	weight = 100, 		type = "item", 		image = "troll_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_cats 					 = {name = "white_cats", 			    		label = "1 Stack White cats", 		weight = 100, 		type = "item", 		image = "kitty_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_cats2 				 = {name = "white_cats2", 			    		label = "2 Stack White cats", 		weight = 100, 		type = "item", 		image = "kitty_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_cats3 				 = {name = "white_cats3", 			    		label = "3 Stack White cats", 		weight = 100, 		type = "item", 		image = "kitty_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    white_cats4 				 = {name = "white_cats4", 			    		label = "4 Stack White cats", 		weight = 100, 		type = "item", 		image = "kitty_white.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_cats 					 = {name = "blue_cats", 			    		label = "1 Stack blue cats", 		weight = 100, 		type = "item", 		image = "kitty_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_cats2 					 = {name = "blue_cats2", 			    		label = "2 Stack blue cats", 	    weight = 100, 		type = "item", 		image = "kitty_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_cats3 					 = {name = "blue_cats3", 			    		label = "3 Stack blue cats", 		weight = 100, 		type = "item", 		image = "kitty_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blue_cats4 					 = {name = "blue_cats4", 			    		label = "4 Stack blue cats", 		weight = 100, 		type = "item", 		image = "kitty_blue.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_cats 					 = {name = "red_cats", 			    			label = "1 Stack red cats", 		weight = 100, 		type = "item", 		image = "kitty_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_cats2 					 = {name = "red_cats2", 			    		label = "2 Stack red cats", 		weight = 100, 		type = "item", 		image = "kitty_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_cats3 					 = {name = "red_cats3", 			    		label = "3 Stack red cats", 		weight = 100, 		type = "item", 		image = "kitty_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    red_cats4 					 = {name = "red_cats4", 			    		label = "4 Stack red cats", 		weight = 100, 		type = "item", 		image = "kitty_red.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_cats 				 = {name = "orange_cats", 			    		label = "1 Stack orange cats", 	    weight = 100, 		type = "item", 		image = "kitty_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_cats2 				 = {name = "orange_cats2", 			    		label = "2 Stack orange cats", 	    weight = 100, 		type = "item", 		image = "kitty_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_cats3 				 = {name = "orange_cats3", 			    		label = "3 Stack orange cats", 		weight = 100, 		type = "item", 		image = "kitty_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    orange_cats4 				 = {name = "orange_cats4", 			    		label = "4 Stack orange cats", 		weight = 100, 		type = "item", 		image = "kitty_orange.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    dualpress 				 	 = {name = "dualpress", 			    		label = "Dual Pill Press", 			weight = 100, 		type = "item", 		image = "pillpress.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    triplepress 				 = {name = "triplepress", 			    		label = "Triple Pill Press", 		weight = 100, 		type = "item", 		image = "pillpress.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    quadpress 					 = {name = "quadpress", 			    		label = "Quad Pill Press", 			weight = 100, 		type = "item", 		image = "pillpress.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    spores 				    	 = {name = "spores", 			    			label = "spores", 		     		weight = 100, 		type = "item", 		image = "shrooms.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    cokeburner 				     = {name = "cokeburner", 			    		label = "Coke Burner", 		    	weight = 100, 		type = "item", 		image = "gta5phone.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    crackburner 				 = {name = "crackburner", 			    		label = "Crack Burner", 		    weight = 100, 		type = "item", 		image = "gta5phone.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    heroinburner 				 = {name = "heroinburner", 			    		label = "Heroin Burner", 			weight = 100, 		type = "item", 		image = "gta5phone.png", 					unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    lsdburner 				     = {name = "lsdburner", 			    		label = "LSD Burner", 		    	weight = 100, 		type = "item", 		image = "gta5phone.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    cactusbulb 				     = {name = "cactusbulb", 			    		label = "Cactus Bulb", 		    	weight = 100, 		type = "item", 		image = "cactusbulb.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    driedmescaline 				 = {name = "driedmescaline", 			    	label = "Mescaline", 		    	weight = 100, 		type = "item", 		image = "driedmescaline.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    mdlean 				         = {name = "mdlean", 			    			label = "Sizzurup", 		    	weight = 100, 		type = "item", 		image = "Sizzurup.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    mdreddextro 				 = {name = "mdreddextro", 			    		label = "Red Dextro", 		    	weight = 100, 		type = "item", 		image = "reddextro.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    wetcannabis 				 = {name = "wetcannabis", 			    		label = "Wet Cannabis", 		    weight = 100, 		type = "item", 		image = "wetcannabis.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    drycannabis 				 = {name = "drycannabis", 			    		label = "Dry Cannabis", 		    weight = 100, 		type = "item", 		image = "driedcannabis.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    weedgrinder 				 = {name = "weedgrinder", 			    		label = "Weed Grinder", 		    weight = 100, 		type = "item", 		image = "weedgrinder.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    mdbutter 				     = {name = "mdbutter", 			    			label = "Butter", 		    		weight = 100, 		type = "item", 		image = "butter.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    cannabutter 				 = {name = "cannabutter", 			    		label = "Canna-Butter", 		    weight = 100, 		type = "item", 		image = "cannabutter.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    specialbrownie 				 = {name = "specialbrownie", 			    	label = "Special Brownie", 		    weight = 100, 		type = "item", 		image = "chocolate.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    specialcookie 				 = {name = "specialcookie", 			    	label = "Special Cookie", 		    weight = 100, 		type = "item", 		image = "specialcookie.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    specialmuffin 				 = {name = "specialmuffin", 			    	label = "Special Muffin", 		    weight = 100, 		type = "item", 		image = "specialmuffin.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    specialchocolate 			 = {name = "specialchocolate", 			    	label = "Special Chocolate", 		weight = 100, 		type = "item", 		image = "specialchocolate.png", 			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    grindedweed 				 = {name = "grindedweed", 			    		label = "Keef", 		    		weight = 100, 		type = "item", 		image = "keef.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    flour 				         = {name = "flour", 			    			label = "Flour", 		    		weight = 100, 		type = "item", 		image = "flour.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    chocolate 				     = {name = "chocolate", 			    		label = "Chocolate", 				weight = 100, 		type = "item", 		image = "chocolate.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    ephedrine 				     = {name = "ephedrine", 			    		label = "Ephedrine", 				weight = 100, 		type = "item", 		image = "ephedrine.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    acetone 				     = {name = "acetone", 			    			label = "Acetone", 		    		weight = 100, 		type = "item", 		image = "acetone.png", 			    		unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    methbags 				     = {name = "methbags", 			    			label = "Meth", 		    		weight = 100, 		type = "item", 		image = "methbags.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    blunt 				    	 = {name = "blunt", 			    			label = "Blunts", 					weight = 100, 		type = "item", 		image = "blunt.png", 			   	    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    butane 				    	 = {name = "butane", 			    			label = "Butane", 					weight = 100, 		type = "item", 		image = "butane.png", 			   	    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    butanetorch 				 = {name = "butanetorch", 			    		label = "Butane Torch", 		    weight = 100, 		type = "item", 		image = "butanetorch.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    dabrig 				     	 = {name = "dabrig", 			    			label = "Dab Rig", 		    		weight = 100, 		type = "item", 		image = "dabrig2.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    mdwoods 				     = {name = "mdwoods", 			    			label = "MDWOODS", 					weight = 100, 		type = "item", 		image = "mdwoods.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    ciggie 				    	 = {name = "ciggie", 			    			label = "Ciggie", 					weight = 100, 		type = "item", 		image = "ciggie.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    tobacco 				     = {name = "tobacco", 			    			label = "Tobacco", 		    		weight = 100, 		type = "item", 		image = "tobacco.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    shatter 				     = {name = "shatter", 			    			label = "Shatter", 		    		weight = 100, 		type = "item", 		image = "shatter.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    bluntwrap 				     = {name = "bluntwrap", 			    		label = "Blunt Wrap", 		    	weight = 100, 		type = "item", 		image = "bluntwrap.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    leanbluntwrap 				 = {name = "leanbluntwrap", 			    	label = "Lean Blunt Wrap", 		    weight = 100, 		type = "item", 		image = "leanbluntwrap.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    dextroblunt 				 = {name = "dextroblunt", 			    		label = "Dextro Blunt Wrap", 		weight = 100, 		type = "item", 		image = "dextroblunt.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    --dextrobluntwrap 			 = {name = "dextrobluntwrap", 			    	label = "Dextro Blunt Wrap", 		weight = 100, 		type = "item", 		image = "dextrobluntwrap.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    leanblunts 				     = {name = "leanblunts", 			    		label = "Lean Blunts", 		    	weight = 100, 		type = "item", 		image = "leanblunts.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    dextroblunts 				 = {name = "dextroblunts", 			    		label = "Dextro Blunts", 		    weight = 100, 		type = "item", 		image = "dextroblunts.png", 				unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    chewyblunt 				     = {name = "chewyblunt", 			    		label = "Chewy", 		    		weight = 100, 		type = "item", 		image = "blunt.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    sprunk 				    	 = {name = "sprunk", 			    			label = "Sprunk", 		    		weight = 100, 		type = "item", 		image = "sprunk.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    leancup 				     = {name = "leancup", 			    			label = "Empty Cup", 		    	weight = 100, 		type = "item", 		image = "leancup.png", 			   			unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    cupoflean 				     = {name = "cupoflean", 			    		label = "Lean Cup", 		    	weight = 100, 		type = "item", 		image = "cupoflean.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    cupofdextro 				 = {name = "cupofdextro", 			    		label = "Dextro Cup", 		    	weight = 100, 		type = "item", 		image = "cupofdextro.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
    xtcburner 				     = {name = "xtcburner", 			    		label = "XTC Burner", 		    	weight = 100, 		type = "item", 		image = "gta5phone.png", 			    	unique = false, 	useable = true, 	shouldClose = true,	   combinable = nil,      description = ""},
  
```

- **STEP 2**

 	- delete `qb-drugs` 

- **STEP 3**

	-  Inside the config file change **all** the locations for everything.
		- **ps:  All locations have been changed to make a preview video easier and with how big of a script this is, Im not going to config it for every city. THESE LOCATION DO NOT DO WELL FOR A LIVE SERVER SO CHANGE THEM**

- **STEP 4**

	- head to `qb-radial/config.lua` and search for the following event
```lua
     event = 'qb-drugs:client:cornerselling',
```
![](https://cdn.discordapp.com/attachments/1164709522691076120/1185724912648867940/image.png?ex=6590a760&is=657e3260&hm=51534201d8d3e71f79a5c1678879ed8423f381a4a31c62f1bce6caf73782abe0&)

```lua
     event = 'md-drugs:client:cornerselling',
```

![](https://cdn.discordapp.com/attachments/1164709522691076120/1185725132975644753/image.png?ex=6590a795&is=657e3295&hm=97d7f60ec6c4508af92f758c00669b1d52fe673c6481434b586f81cf29c1f292&)



- **STEP 5**

	- Head to `qb-shops/config.lua` **Config.Products** and add the folowing items to OR anywhere else you want them. The Only way in this script to get them is to find the travelling merchant

```lua
	{name = 'bakingsoda',   price = 100,   amount = 5000, info = {}, type = 'item'},
	{name = 'emptyvial',    price = 100,   amount = 5000, info = {}, type = 'item'},
	{name = 'needle',    	price = 100,   amount = 5000, info = {}, type = 'item'},
```

- **Preview**

![](https://cdn.discordapp.com/attachments/1164709522691076120/1185729686135910582/image.png?ex=6590abd2&is=657e36d2&hm=35c3b2d4f55473d65dd9197a69052b7ec7ac7b28528811f3f59d5f306b7237eb&)

- **STEP 6**
 - Head to your emote script search for **uncuff** if it's missing add it
 - if rp or dpemotes then do this 

```lua
    ["uncuff"] = {"mp_arresting","a_uncuff","Uncuff", AnimationOptions = {     EmoteLoop = true,     EmoteMoving = true } },
    ["edible"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "edible",    AnimationOptions = {        EmoteLoop = false,        EmoteMoving = true    }},
    ["shootup"] = { "rcmpaparazzo1ig_4", "miranda_shooting_up", "Shoot Up",  AnimationOptions = {EmoteLoop = true,EmoteMoving = true,Prop = 'prop_syringe_01',  PansexualPropBone = 18905,PropPlacement = {0.11, 0.03, 0.0, -124.0, 0.0, 0.0},}},
```

- if scully emotes do this in emotes.lua
```
		{
			Label = 'Uncuff',
			Command = 'uncuff',
			Animation = 'a_uncuff',
			Dictionary = 'mp_arresting',
			Options = {
				Flags = {
					Loop = true,
					Move = true,
				},
			}
		},
		{
			Label = 'Edibles',
			Command = 'edible',
			Animation = 'mp_player_int_eat_burger',
			Dictionary = 'mp_player_inteat@burger',
			Options = {
				Flags = {
					Loop = true,
					Move = true,
				},
			}
		},
```
then in prop emotes do 
```
{
        Label = 'Shoot Up',
        Command = 'shootup',
        Animation = "miranda_shooting_up",
        Dictionary = "rcmpaparazzo1ig_4",
        Options = {
            Flags = {
                Loop = true,
            },
            Props = {
                {
                    Bone = 18905,
                    Name = 'prop_syringe_01',
                    Placement = {
                        vector3(0.11, 0.03, 0.0,),
                        vector3( -124.0, 0.0, 0.0),
                    },
                },
            },
        },
    },
```

- **STEP 7**
	- check `qb-smallresources/config.lua` and if this exists, delete it 
```
[2] = { --Coke Processing Enter/Exit
        [1] = {
            poly = { coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            poly = { coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Leave'
        }
    }
```
	
	
	
-- **OPTIONAL STEPS**

- **for qb-adminmenu users** 

	- head to `qb-adminmenu/server/server.lua` search for the following callback

```lua
	QBCore.Functions.CreateCallback('test:getdealers', function(_, cb)
		cb(exports['qb-drugs']:GetDealers())
	end)
```
- and replace it with this

```lua
	QBCore.Functions.CreateCallback('test:getdealers', function(_, cb)
		cb(exports['md-drugs']:GetDealers())
	end)
```	
- 
-	**IF YOU WANT TO USE THE TIER SYSTEM FOR COKE,CRACK, AND HEROIN**
	search for 
	```
	 PlayerData.metadata['dealerrep'] = PlayerData.metadata['dealerrep'] or 0
	```
	IF YOUR QB-CORE IS FROM MAY 1ST OR BEFORE GO IN PLAYERS.LUA in QB-CORE/Server/players.lua and add these directly below
	```
		PlayerData.metadata['coke'] = PlayerData.metadata['coke'] or 0
		PlayerData.metadata['heroin'] = PlayerData.metadata['heroin'] or 0
		PlayerData.metadata['lsd'] = PlayerData.metadata['lsd'] or 0
	```

 **IF YOU HAVE THE LATEST QB-CORE THEY RECENTLY UPDATED HOW METADATA IS MADE**

go to the config of qb-core and search metadata, underneath craftingrep = 0, add this
```
 	lsd = 0,
        coke = 0,
        heroin = 0,
```
	

[mlo i use](https://www.gta5-mods.com/maps/mlo-4x-drug-lab-interiors-sp-fivem) heres an option. use it or dont. 
