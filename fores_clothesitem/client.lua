
ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


local hakteklader = {
    male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 238,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 23,
            ['pants_1'] = 64,   ['pants_2'] = 10,
            ['shoes_1'] = 8,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = -1,     ['ears_2'] = 0,
            ['bproof_1'] = 0, ['bproof_2'] = 0,
            ['mask_1'] = 0, ['mask_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 247,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 24,
            ['pants_1'] = 101,   ['pants_2'] = 3,
            ['shoes_1'] = 4,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 2,
            ['ears_1'] = -1,     ['ears_2'] = 0,
            ['bproof_1'] = 0, ['bproof_2'] = 0,
            ['mask_1'] = 0, ['mask_2'] = 0,
      }
    }
    local sjukhusklaer = {
        male = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 104,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 15,
                ['pants_1'] = 61,   ['pants_2'] = 0,
                ['shoes_1'] = 34,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['bproof_1'] = 0, ['bproof_2'] = 0,
                ['mask_1'] = 0, ['mask_2'] = 0,
            },
            female = {
                ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                ['torso_1'] = 79,   ['torso_2'] = 3,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 14,
                ['pants_1'] = 17,   ['pants_2'] = 0,
                ['shoes_1'] = 35,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 2,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['bproof_1'] = 0, ['bproof_2'] = 0,
                ['mask_1'] = 0, ['mask_2'] = 0,
          }
        }



RegisterNetEvent('foreshakteklader')
AddEventHandler('foreshakteklader', function ()
    local ped = PlayerPedId()
    loadAnimDict("missmic4")
    TaskPlayAnim(ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, hakteklader.male)
            else
                TriggerEvent('skinchanger:loadClothes', skin, hakteklader.female)
            end
        end)
        Citizen.Wait(2000)
        ClearPedTasks(ped)
end)


RegisterNetEvent('foresoperationsklader')
AddEventHandler('foresoperationsklader', function ()
    local ped = PlayerPedId()
    loadAnimDict("missmic4")
    TaskPlayAnim(ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, sjukhusklaer.male)
            else
                TriggerEvent('skinchanger:loadClothes', skin, sjukhusklaer.female)
            end
        end)
        Citizen.Wait(2000)
        ClearPedTasks(ped)
end)

RegisterNetEvent('forescivilklader')
AddEventHandler('forescivilklader', function ()
    local ped = PlayerPedId()
    loadAnimDict("missmic4")
    TaskPlayAnim(ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            TriggerEvent('skinchanger:loadSkin', skin)
        end)
        Citizen.Wait(2000)
        ClearPedTasks(ped)
end)

    function loadAnimDict(dict)
        while ( not HasAnimDictLoaded(dict)) do
            RequestAnimDict(dict)
            Citizen.Wait(0)
        end
    end