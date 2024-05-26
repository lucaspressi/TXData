local blips = {
    -- Exemplo: {title="", colour=, id=, x=, y=, z=},
    {title="Plantação de Coca", colour=5, id=140, x = 1471.14 , y = -2662.40, z = 39.87},
    {title="Plantação de Maconha", colour=4, id=140, x = 244.74 , y = 373.54, z = 105.74},
    {title="Plantação de Ópio", colour=6, id=140, x = -2037.02 , y = -170.58, z = 95.34},
    {title="Plantação de Cogumelos", colour=7, id=140, x = 2191.15 , y = 5186.71, z = 57.92},
    {title="Plantação de Mescalina", colour=8, id=140, x = 2624.94 , y = 4205.83, z = 41.79},
}
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 1.0)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)
