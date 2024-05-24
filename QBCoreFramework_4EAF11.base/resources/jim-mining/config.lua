print("^2Jim-Mining ^7v^4"..GetResourceMetadata(GetCurrentResourceName(), 'version', nil):gsub("%.", "^7.^4").."^7 - ^2Mining Script by ^1Jimathy^7")

Loc = {}

Config = {
	Debug = false, -- enable debug mode
	img = "qb-inventory/html/images/", --Set this to the image directory of your inventory script or "nil" if using newer qb-menu

	Lan = "pt-br", -- Pick your language here

	JimShops = true, 		-- Set this to true if using jim-shops

	Inv = "qb",				--"qb" or "ox"
	Menu = "qb",			--"qb" or "ox"
	ProgressBar = "qb",		--"qb" or "ox"
	Notify = "qb",			--"qb" or "ox"

	DrillSound = true,		-- disable drill sounds

	MultiCraft = true,		-- Enable multicraft
	MultiCraftAmounts = { [1], [3], [5], [10] },

	K4MB1Prop = false, -- Enable this to make use of K4MB1's ore props provided with their Mining Cave MLO

	Timings = { -- Time it takes to do things
		["Cracking"] = math.random(5000, 10000),
		["Washing"] = math.random(10000, 12000),
		["Panning"] = math.random(25000, 30000),
		["Pickaxe"] = math.random(15000, 18000),
		["Mining"] = math.random(10000, 15000),
		["Laser"] = math.random(7000, 10000),
		["OreRespawn"] = math.random(55000, 75000),
		["Crafting"] = 5000,
	},

	CrackPool = { -- Rewards from cracking stone
		"carbon",
		"copperore",
		"ironore",
		"metalscrap",
	},

	WashPool = {	-- Rewards from washing stone
		"goldore",
		"uncut_ruby",
		"uncut_emerald",
		"uncut_diamond",
		"uncut_sapphire",
		"goldore",
		"silverore",
		"carbon",
		"copperore",
		"ironore",
	},

	PanPool = {		-- Rewards from panning
		"can",
		"goldore",
		"can",
		"goldore",
		"bottle",
		"stone",
		"goldore",
		"bottle",
		"can",
		"silverore",
		"can",
		"silverore",
		"bottle",
		"stone",
		"silverore",
		"bottle",
	},

------------------------------------------------------------
	OreSell = { -- List of ores you can sell to the buyer npc
		"goldingot",
		"silveringot",
		"copperore",
		"ironore",
		"goldore",
		"silverore",
		"carbon",
		"uncut_emerald",
		"uncut_ruby",
		"uncut_diamond",
		"uncut_sapphire",
		"emerald",
		"ruby",
		"diamond",
		"sapphire",


	},

	SellingPrices = { -- Selling Prices
	-- Ore and raw materials
	['copperore'] = 50,
	['goldore'] = 200,
	['silverore'] = 100,
	['ironore'] = 75,
	['carbon'] = 50,

	-- Ingots (considerando o valor das matérias-primas e o tempo de crafting)
	['goldingot'] = 1000, -- 4 goldore = 800 + valor do tempo de crafting
	['silveringot'] = 250, -- 2 silverore = 200 + valor do tempo de crafting

	-- Uncut gems
	['uncut_emerald'] = 300,
	['uncut_ruby'] = 300,
	['uncut_diamond'] = 500,
	['uncut_sapphire'] = 300,

	-- Cut gems (considerando o valor da gema não lapidada e o tempo de lapidação)
	['emerald'] = 800, -- 300 (uncut_emerald) + 500 (crafting time)
	['ruby'] = 700, -- 300 (uncut_ruby) + 400 (crafting time)
	['diamond'] = 1000, -- 500 (uncut_diamond) + 500 (crafting time)
	['sapphire'] = 500, -- 300 (uncut_sapphire) + 200 (crafting time)

	-- Jewelry (considerando o valor dos materiais e o tempo de crafting)
	['diamond_ring'] = 1550, -- 450 (gold_ring) + 1000 (diamond) + 100 (crafting time)
	['emerald_ring'] = 1300, -- 450 (gold_ring) + 800 (emerald) + 50 (crafting time)
	['ruby_ring'] = 1200, -- 450 (gold_ring) + 700 (ruby) + 50 (crafting time)
	['sapphire_ring'] = 1000, -- 450 (gold_ring) + 500 (sapphire) + 50 (crafting time)
	['diamond_ring_silver'] = 1285, -- 158 (silver_ring) + 1000 (diamond) + 125 (crafting time)
	['emerald_ring_silver'] = 1085, -- 158 (silver_ring) + 800 (emerald) + 125 (crafting time)
	['ruby_ring_silver'] = 1010, -- 158 (silver_ring) + 700 (ruby) + 150 (crafting time)
	['sapphire_ring_silver'] = 885, -- 158 (silver_ring) + 500 (sapphire) + 225 (crafting time)

	['diamond_necklace'] = 1700, -- 650 (goldchain) + 1000 (diamond) + 50 (crafting time)
	['emerald_necklace'] = 1450, -- 650 (goldchain) + 800 (emerald) + 50 (crafting time)
	['ruby_necklace'] = 1350, -- 650 (goldchain) + 700 (ruby) + 50 (crafting time)
	['sapphire_necklace'] = 1150, -- 650 (goldchain) + 500 (sapphire) + 50 (crafting time)
	['diamond_necklace_silver'] = 1285, -- 225 (silverchain) + 1000 (diamond) + 58 (crafting time)
	['emerald_necklace_silver'] = 1085, -- 225 (silverchain) + 800 (emerald) + 58 (crafting time)
	['ruby_necklace_silver'] = 985, -- 225 (silverchain) + 700 (ruby) + 58 (crafting time)
	['sapphire_necklace_silver'] = 895, -- 225 (silverchain) + 500 (sapphire) + 158 (crafting time)

	['diamond_earring'] = 1375, -- 275 (goldearring) + 1000 (diamond) + 100 (crafting time)
	['emerald_earring'] = 1100, -- 275 (goldearring) + 800 (emerald) + 25 (crafting time)
	['ruby_earring'] = 1000, -- 275 (goldearring) + 700 (ruby) + 25 (crafting time)
	['sapphire_earring'] = 800, -- 275 (goldearring) + 500 (sapphire) + 25 (crafting time)
	['diamond_earring_silver'] = 1175, -- 100 (silverearring) + 1000 (diamond) + 75 (crafting time)
	['emerald_earring_silver'] = 900, -- 100 (silverearring) + 800 (emerald) + 0 (crafting time)
	['ruby_earring_silver'] = 800, -- 100 (silverearring) + 700 (ruby) + 0 (crafting time)
	['sapphire_earring_silver'] = 700, -- 100 (silverearring) + 500 (sapphire) + 100 (crafting time)

	['gold_ring'] = 450, -- 350 (gold_ring) + 100 (crafting time)
	['goldchain'] = 650, -- 500 (goldchain) + 150 (crafting time)
	['goldearring'] = 275, -- 200 (goldearring) + 75 (crafting time)
	['silver_ring'] = 160, -- 83 (silver_ring) + 75 (crafting time)
	['silverchain'] = 225, -- 125 (silverchain) + 100 (crafting time)
	['silverearring'] = 100, -- 50 (silverearring) + 50 (crafting time)
}
,
------------------------------------------------------------
--Mining Store Items
	Items = {
		label = "Loja de Material para Mineiração e Refino",  slots = 9,
		items = {
			{ name = "water_bottle", price = 0, amount = 100, info = {}, type = "item", slot = 1, },
			{ name = "sandwich", price = 0, amount = 250, info = {}, type = "item", slot = 2, },
			{ name = "bandage", price = 0, amount = 100, info = {}, type = "item", slot = 3, },
			{ name = "weapon_flashlight", price = 0, amount = 100, info = {}, type = "item", slot = 4, },
			{ name = "goldpan", price = 0, amount = 100, info = {}, type = "item", slot = 5, },
			{ name = "pickaxe",	price = 0, amount = 100, info = {}, type = "item", slot = 6, },
			{ name = "miningdrill",	price = 0, amount = 50, info = {}, type = "item", slot = 7, },
			{ name = "mininglaser",	price = 0, amount = 5, info = {}, type = "item", slot = 8, },
			{ name = "drillbit", price = 0, amount = 100, info = {}, type = "item", slot = 9, },
		},
	},
}
Crafting = {
	SmeltMenu = {
		{ ["copper"] = { ["copperore"] = 1 }, ['amount'] = 4 },

		{ ["goldingot"] = { ["goldore"] = 4 } },
		{ ["silveringot"] = { ["silverore"] = 2 } },
		{ ["iron"] = { ["ironore"] = 1 } },
		{ ["steel"] = { ["ironore"] = 1, ["carbon"] = 1 } },
		{ ["aluminum"] = { ["can"] = 2, }, ['amount'] = 3 },
		{ ["glass"] = { ["bottle"] = 2, }, ['amount'] = 2 },
	},
	GemCut = {
		{ ["emerald"] = { ["uncut_emerald"] = 1, } },
		{ ["diamond"] = { ["uncut_diamond"] = 1}, },
		{ ["ruby"] = { ["uncut_ruby"] = 1 }, },
		{ ["sapphire"] = { ["uncut_sapphire"] = 1 }, },
	},
	RingCut = {
		{ ["gold_ring"] = { ["goldingot"] = 1 }, ['amount'] = 3 },
		{ ["silver_ring"] = { ["silveringot"] = 1 }, ['amount'] = 3 },
		{ ["diamond_ring"] = { ["gold_ring"] = 1, ["diamond"] = 1 }, },
		{ ["emerald_ring"] = { ["gold_ring"] = 1, ["emerald"] = 1 }, },
		{ ["ruby_ring"] = { ["gold_ring"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_ring"] = { ["gold_ring"] = 1, ["sapphire"] = 1 }, },

		{ ["diamond_ring_silver"] = { ["silver_ring"] = 1, ["diamond"] = 1 }, },
		{ ["emerald_ring_silver"] = { ["silver_ring"] = 1, ["emerald"] = 1 }, },
		{ ["ruby_ring_silver"] = { ["silver_ring"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_ring_silver"] = { ["silver_ring"] = 1, ["sapphire"] = 1 }, },
	},
	NeckCut = {
		{ ["goldchain"] = { ["goldingot"] = 1 }, ['amount'] = 2  },
		{ ["silverchain"] = { ["silveringot"] = 1 }, ['amount'] = 2  },
		{ ["diamond_necklace"] = { ["goldchain"] = 1, ["diamond"] = 1 }, },
		{ ["ruby_necklace"] = { ["goldchain"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_necklace"] = { ["goldchain"] = 1, ["sapphire"] = 1 }, },
		{ ["emerald_necklace"] = { ["goldchain"] = 1, ["emerald"] = 1 }, },

		{ ["diamond_necklace_silver"] = { ["silverchain"] = 1, ["diamond"] = 1 }, },
		{ ["ruby_necklace_silver"] = { ["silverchain"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_necklace_silver"] = { ["silverchain"] = 1, ["sapphire"] = 1 }, },
		{ ["emerald_necklace_silver"] = { ["silverchain"] = 1, ["emerald"] = 1 }, },
	},
	EarCut = {
		{ ["goldearring"] = { ["goldingot"] = 1 }, ['amount'] = 5  },
		{ ["silverearring"] = { ["silveringot"] = 1 }, ['amount'] = 5  },
		{ ["diamond_earring"] = { ["goldearring"] = 1, ["diamond"] = 1 }, },
		{ ["ruby_earring"] = { ["goldearring"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_earring"] = { ["goldearring"] = 1, ["sapphire"] = 1 }, },
		{ ["emerald_earring"] = { ["goldearring"] = 1, ["emerald"] = 1 }, },

		{ ["diamond_earring_silver"] = { ["silverearring"] = 1, ["diamond"] = 1 }, },
		{ ["ruby_earring_silver"] = { ["silverearring"] = 1, ["ruby"] = 1 }, },
		{ ["sapphire_earring_silver"] = { ["silverearring"] = 1, ["sapphire"] = 1 }, },
		{ ["emerald_earring_silver"] = { ["silverearring"] = 1, ["emerald"] = 1 }, },
	},
}
