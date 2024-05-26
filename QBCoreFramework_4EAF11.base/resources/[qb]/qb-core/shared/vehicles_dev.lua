QBShared = QBShared or {}
QBShared.Vehicles = QBShared.Vehicles or {}

local Vehicles = {
    --- Compacts (0)
    {
        model = 'asbo',
        name = 'Asbo',
        brand = 'Maxwell',
        price = 4000,
        category = 'compacto',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 30,
        trunkWeight = 38000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'blista',
        name = 'Blista',
        brand = 'Dinka',
        price = 13000,
        category = 'compacto',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 30,
        trunkWeight = 38000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'brioso2',
        name = 'Brioso 300',
        brand = 'Grotti',
        price = 12000,
        category = 'compacto',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 30,
        trunkWeight = 38000,
        type = 'automobile',
        shop = 'pdm'
    },

    -- Sedans (1)
    {
        model = 'asea',
        name = 'Asea',
        brand = 'Declasse',
        price = 2500,
        category = 'sedans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 40,
        trunkWeight = 50000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'tailgater',
        name = 'Tailgater',
        brand = 'Obey',
        price = 22000,
        category = 'sedans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 40,
        trunkWeight = 50000,
        type = 'automobile',
        shop = 'pdm'
    },

    -- SUVs
    {
        model = 'patriot',
        name = 'Patriot',
        brand = 'Mammoth',
        price = 21000,
        category = 'suvs',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 50,
        trunkWeight = 75000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'patriot2',
        name = 'Patriot Stretch',
        brand = 'Mammoth',
        price = 21000,
        category = 'suvs',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 50,
        trunkWeight = 75000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'patriot3',
        name = 'Patriot Military',
        brand = 'Mil-Spec',
        price = 270000,
        category = 'suvs',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 50,
        trunkWeight = 75000,
        type = 'automobile',
        shop = 'pdm'
    },

    --- Off-Road (9)
    {
        model = 'bifta',
        name = 'Bifta',
        brand = 'Annis',
        price = 15500,
        category = 'offroad',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 60000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'blazer',
        name = 'Blazer',
        brand = 'Annis',
        price = 7500,
        category = 'offroad',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 60000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'riata',
        name = 'Riata',
        brand = 'Vapid',
        price = 380000,
        category = 'offroad',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 60000,
        type = 'automobile',
        shop = 'pdm'
    },

    --- Vans (12)
    {
        model = 'bison',
        name = 'Bison',
        brand = 'Bravado',
        price = 18000,
        category = 'vans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 120000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'burrito3',
        name = 'Burrito',
        brand = 'Declasse',
        price = 4000,
        category = 'vans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 120000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'minivan',
        name = 'Minivan',
        brand = 'Vapid',
        price = 7000,
        category = 'vans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 120000,
        type = 'automobile',
        shop = 'pdm'
    },
    {
        model = 'speedo5',
        name = 'Speedo Custom',
        brand = 'Vapid',
        price = 238000,
        category = 'vans',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 35,
        trunkWeight = 120000,
        type = 'automobile',
        shop = 'pdm'
    },

    --- Cycles (13)
    {
        model = 'bmx',
        name = 'BMX',
        brand = 'Bike',
        price = 160,
        category = 'cycles',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 0,
        trunkWeight = 0,
        type = 'bike',
        shop = 'pdm'
    },
    {
        model = 'tribike2',
        name = 'Endurex Race Bike',
        brand = 'Bike',
        price = 700,
        category = 'cycles',
        gloveboxSlots = 5,
        gloveboxWeight = 10000,
        trunkSlots = 0,
        trunkWeight = 0,
        type = 'bike',
        shop = 'pdm'
    },

}

-- Função joaat
function joaat(key)
    local b = 0
    for i = 1, #key do
        b = b + string.byte(key, i)
        b = b + (b << 10)
        b = b ~ (b >> 6)
    end
    b = b + (b << 3)
    b = b ~ (b >> 11)
    b = b + (b << 15)
    return b
end

for i = 1, #Vehicles do
    local veh = Vehicles[i]

    QBShared.Vehicles[veh.model] = {
        spawncode = veh.model,
        name = veh.name,
        brand = veh.brand,
        model = veh.model,
        price = veh.price,
        trunkWeight = veh.trunkWeight,
        category = veh.category,
        hash = joaat(veh.model),
        type = veh.type,
        shop = veh.shop
    }

end
