local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local times, randomnumber, count = 0, 0, 0
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Illegal", "~b~Revendeur d'infos illegal")

_menuPool:Add(mainMenu)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

-- Used in "FirstMenu"
bool = false

-- this menu is a checkbox item
seats = {-1,0,1,2}
function FirstItem(menu)

local submenu = _menuPool:AddSubMenu(menu, "~g~Recolte")    --Crée une ligne dans le 1er menu pour crée un sub menu
_menuPool:MouseControlsEnabled (false); -- desactive la souris
_menuPool:MouseEdgeEnabled (false); -- desactive la gestion de la souris
_menuPool:ControlDisablingEnabled(false);
--liste des item a aficher dans le sub-menu

    local weedItemRecolt = NativeUI.CreateItem("Recolte de la weed", "Prix : ~r~15000$")
    weedItemRecolt.Activated = function(sender, item)
        if item == weedItemRecolt then
            TriggerServerEvent('buyWeedF')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.WeedFarm.x, Config.WeedFarm.y, Config.WeedFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
                _menuPool:CloseAllMenus(true)
        end
   end

   local OpiumItemRecolt = NativeUI.CreateItem("Recolte de l' Opium", "Prix : ~r~95000$")
   OpiumItemRecolt.Activated = function(sender, item)
        if item == OpiumItemRecolt then
            TriggerServerEvent('buyOpiumF')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.OpiumFarm.x, Config.OpiumFarm.y, Config.OpiumFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end

   local CokeItemRecolt = NativeUI.CreateItem("Recolte de la Coke", "Prix : ~r~30000$")
   CokeItemRecolt.Activated = function(sender, item)
        if item == CokeItemRecolt then
            TriggerServerEvent('buyCokeF')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.CokeFarm.x, Config.CokeFarm.y, Config.CokeFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end

   local MethItemRecolt = NativeUI.CreateItem("Recolte de la Meth", "Prix : ~r~20000$")
   MethItemRecolt.Activated = function(sender, item)
        if item == MethItemRecolt then
            TriggerServerEvent('buyMethF')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.MethFarm.x, Config.MethFarm.y, Config.MethFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end
   
   local CrackItemRecolt = NativeUI.CreateItem("Recolte du Crack", "Prix : ~r~60000$")  ----
   CrackItemRecolt.Activated = function(sender, item)
        if item == CrackItemRecolt then
            TriggerServerEvent('buyCrackF')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.CrackFarm.x, Config.CrackFarm.y, Config.CrackFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end

   local KetaItemRecolt = NativeUI.CreateItem("Recolte de la Ketamine", "Prix : ~r~60000$")  ----
   KetaItemRecolt.Activated = function(sender, item)
        if item ==KetakItemRecolt then
            --TriggerServerEvent('buyBlista')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.KetamineFarm.x, Config.KetamineFarm.y, Config.KetamineFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end

   local EcstaItemRecolt = NativeUI.CreateItem("Recolte de l'Ecstasy", "Prix : ~r~60000$")  ----
   EcstaItemRecolt.Activated = function(sender, item)
        if item ==EcstaItemRecolt then
            --TriggerServerEvent('buyBlista')
            ESX.ShowNotification('Vous avez payez ~r~50000$')
            Citizen.Wait(0)
                x, y, z = Config.EcstasyFarm.x, Config.EcstasyFarm.y, Config.EcstasyFarm.z
                SetWaypointOff ()
                SetNewWaypoint(x, y, z)
                ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
   end

   submenu:AddItem(weedItemRecolt)
   submenu:AddItem(CokeItemRecolt)
   submenu:AddItem(OpiumItemRecolt)
   submenu:AddItem(MethItemRecolt)
   submenu:AddItem(CrackItemRecolt)
   submenu:AddItem(KetaItemRecolt)
   submenu:AddItem(EcstaItemRecolt)

end






















function SecondItem(menu) 

  local submenu = _menuPool:AddSubMenu(menu, "~y~Traitement")    --Crée une ligne dans le 1er menu pour crée un sub menu
  _menuPool:MouseControlsEnabled (false);
  _menuPool:MouseEdgeEnabled (false);
  _menuPool:ControlDisablingEnabled(false);
  --liste des item a aficher dans le sub-menu

  local weedItemTreatement = NativeUI.CreateItem("Traitement de la weed", "Prix : ~r~50000$")
  weedItemTreatement.Activated = function(sender, item)
      if item == weedItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                x, y, z = Config.WeedTreatment.x, Config.WeedTreatment.y, Config.WeedTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end

 local OpiumItemTreatement = NativeUI.CreateItem("Traitement de l' Opium", "Prix : ~r~50000$")
 OpiumItemTreatement.Activated = function(sender, item)
      if item == OpiumItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                x, y, z = Config.OpiumTreatment.x, Config.OpiumTreatment.y, Config.OpiumTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end

 local CokeItemTreatement = NativeUI.CreateItem("Traitement de la Coke", "Prix : ~r~50000$")
 CokeItemTreatement.Activated = function(sender, item)
      if item == CokeItemTreatement then
              --TriggerServerEvent('buyVespa')
              ESX.ShowNotification('Vous avez payez ~r~500$')
              Citizen.Wait(0)
                  x, y, z = Config.CokeTreatment.x, Config.CokeTreatment.y, Config.CokeTreatment.z
                  SetWaypointOff()
                  SetNewWaypoint(x, y, z)
              ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
              _menuPool:CloseAllMenus(true)
          end
 end

 local MethItemTreatement = NativeUI.CreateItem("Traitement de la Meth", "Prix : ~r~50000$")
 MethItemTreatement.Activated = function(sender, item)
      if item == MethItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                x, y, z = Config.MethTreatment.x, Config.MethTreatment.y, Config.MethTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end
 
 local CrackItemTreatement = NativeUI.CreateItem("Traitement du Crack", "Prix : ~r~50000$")
 CrackItemTreatement.Activated = function(sender, item)
      if item == CrackItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                SetWaypointOff ()
                x, y, z = Config.CrackTreatment.x, Config.CrackTreatment.y, Config.CrackTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end

 local KetaItemTreatement = NativeUI.CreateItem("Traitement de la Ketamine", "Prix : ~r~50000$")
 KetaItemTreatement.Activated = function(sender, item)
      if item == KetaItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                x, y, z = Config.KetamineTreatment.x, Config.KetamineTreatment.y, Config.KetamineTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end

 local EcstaItemTreatement = NativeUI.CreateItem("Traitement de l'excasy", "Prix : ~r~50000$")
 EcstaItemTreatement.Activated = function(sender, item)
      if item == EcstaItemTreatement then
            --TriggerServerEvent('buyVespa')
            ESX.ShowNotification('Vous avez payez ~r~500$')
            Citizen.Wait(0)
                x, y, z = Config.EcstasyTreatment.x, Config.EcstasyTreatment.y, Config.EcstasyTreatment.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
 end

     submenu:AddItem(weedItemTreatement)
     submenu:AddItem(CokeItemTreatement)
     submenu:AddItem(OpiumItemTreatement)
     submenu:AddItem(MethItemTreatement)
     submenu:AddItem(CrackItemTreatement)
     submenu:AddItem(KetaItemTreatement)
     submenu:AddItem(EcstaItemTreatement)
     --liste des item a aficher dans le sub-menu
end






















function FourthItem(menu) 
   local submenu = _menuPool:AddSubMenu(menu, "~r~Revente")    --Crée une ligne dans le 1er menu pour crée un sub menu
   _menuPool:MouseControlsEnabled (false);
   _menuPool:MouseEdgeEnabled (false);
   _menuPool:ControlDisablingEnabled(false);
  
   local weedItemRev = NativeUI.CreateItem("Revente de la weed", "Prix : ~r~50000$")
   weedItemRev.Activated = function(sender, item)
       if item == weedItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.WeedResell.x, Config.WeedResell.y, Config.WeedResell.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end
  
  local OpiumItemRev = NativeUI.CreateItem("Revente de l' Opium", "Prix : ~r~50000$")
  OpiumItemRev.Activated = function(sender, item)
       if item == OpiumItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.OpiumResell.x, Config.OpiumResell.y, Config.OpiumResell.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end
    
  local CokeItemRev = NativeUI.CreateItem("Revente de la Coke", "Prix : ~r~50000$")
  CokeItemRev.Activated = function(sender, item)
       if item == CokeItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.CokeResell.x, Config.CokeResell.y, Config.CokeResell.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end

  local MethItemRev = NativeUI.CreateItem("Revente de la Meth", "Prix : ~r~50000$")
  MethItemRev.Activated = function(sender, item)
       if item == MethItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.MethResell.x, Config.MethResell.y, Config.MethResell.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end


  local CrackItemRev = NativeUI.CreateItem("Revente du Crack", "Prix : ~r~50000$")
  CrackItemRev.Activated = function(sender, item)
       if item == CrackItemREv then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.CrackResell.x, Config.CrackResell.y, Config.CrackResell.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end

  local KetaItemRev = NativeUI.CreateItem("Revente de la Ketamine", "Prix : ~r~50000$")
  KetaItemRev.Activated = function(sender, item)
       if item == KetaItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                --  spawnCar("bmx")
                x, y, z = Config.KetamineResel.x, Config.KetamineResel.y, Config.KetamineResel.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)
            _menuPool:CloseAllMenus(true)
        end
  end

  local EcstaItemRev = NativeUI.CreateItem("Revente de l'Ecstasy", "Prix : ~r~50000$")
  EcstaItemRev.Activated = function(sender, item)
       if item == EcstaItemRev then
            --TriggerServerEvent('buyBmx')
            ESX.ShowNotification('Vous avez payez ~r~200$')
            Citizen.Wait(0)
                x, y, z = Config.EcstasyResel.x, Config.EcstasyResel.y, Config.EcstasyResel.z
                SetWaypointOff()
                SetNewWaypoint(x, y, z)
            ESX.ShowAdvancedNotification("Illegal", "Voici l'endroit Trouve le type prés de ~b~cette endroit~w~!", "", "CHAR_CARSITE", 1)

            _menuPool:CloseAllMenus(true)
        end
  end

     submenu:AddItem(weedItemRev)
     submenu:AddItem(CokeItemRev)
     submenu:AddItem(OpiumItemRev)
     submenu:AddItem(MethItemRev)
     submenu:AddItem(CrackItemRev)
     submenu:AddItem(KetaItemRev)
     submenu:AddItem(EcstaItemRev)


end

FirstItem(mainMenu)
SecondItem(mainMenu)
FourthItem(mainMenu)
_menuPool:RefreshIndex()























function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

local zikoz = {
    {x = -368.831, y = 330.582, z = 109.943},
}






















Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(zikoz) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, zikoz[k].x, zikoz[k].y, zikoz[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec ~b~Bernard")
               -- ESX.ShowNotification('Vous avez payez ~r~50000$')
                if IsControlJustPressed(1,51) then
                    if dist <= 1.2 then 
                        mainMenu:Visible(not mainMenu:Visible())
                      --  TriggerClientEvent('esx:showNotification', source, _U('sold_one_opium'))
                    else
                        _menuPool:ProcessMenus()
                    end
                end
            else

            end

            
        end
    end
end)






















--local v1 = vector3(-1043.4936523438, -2661.5031738281, 14.830758094788)
local v1 = vector3(-369.206, 330.957, 110.943)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 200
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end






















local distance = 20

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Bernard")
		end
	end
end)






















Citizen.CreateThread(function()
    local hash = GetHashKey("s_m_m_gardener_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    --ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gardener_01", -1043.4936523438, -2661.5031738281, 12.830758094788, 224.591, true, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gardener_01", -369.206, 330.957, 108.940, 224.591, true, true)
    
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
end)