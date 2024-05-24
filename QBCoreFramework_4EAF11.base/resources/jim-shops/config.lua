-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	System = {
		Debug = false, -- Enable to add debug boxes and message.
		img = "ps-inventory/html/images/", -- Set this to your inventory

		--- FRAMEWORK OPTIONS ---
		Inv = "qb", 		-- Supports "qb"	(ps-inventory) -- leave as "qb" for ps-inventory
							-- "ox"				(ox_inventory)

		Menu = "qb",        -- Supports "qb"    (qb-menu)
							-- "ox"             (ox_lib)
							-- "gta"            (warmenu)

		Notify = "qb",     -- Supports "qb"    (qb-core)
							-- "ox"             (ox_lib)
							-- "gta"            (gta native)

		Callback = "qb",    -- Supports "qb"    (qb-core)
							-- "ox"             (ox_ib)

		Target = "qb",      -- Supports "qb"    (qb-target)
							-- "ox"             (ox_target)

		MenuExport = "qb-menu", -- If using "qb", what is your menu called, usually "qb-menu", "qbx-menu", "jixel-menu" etc
	},


	Overrides = {
		Peds = true, -- Set to true if you want Shops to have Peds
		Limit = true, -- Enable this to add Stash features, This adds limits to items and gets refilled at each restart

		ApGov = false, -- Add support for AP-Goverment Tax

		MaxSlots = 41, -- Set this to your player inventory slot count, this is default "41"
		BlackMarket = false, -- enable to add blackmarket locations (defined at the bottom of this file)
		Measurement = "kg", -- Custom Weight measurement
		Gabz247 = false,  -- Enable if using gabz 247 stores
		GabzAmmu = false, -- Enable if using gabz Ammunation stores
		VendOverride = false, -- Enable this if you want all the vending machines to use this script
		RandomAmount = true, -- Sets wether a stash should have a "random" amount of stock or full.
		SellCasinoChips = {
			coords = vector4(950.37, 34.72, 71.87, 33.82),
			ped = 'S_M_Y_CASINO_01',
			pricePer = 1,
			chipItem = "casinochips",
		}
	},
}