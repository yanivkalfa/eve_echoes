local dir = scriptPath();
local setConfigs = loadfile(dir .. "configs/config.lua");
local setConstants = loadfile(dir .. "configs/const.lua");
local setUtils = loadfile(dir .. "utils/index.utils.lua");
EveHelper = {}
EveHelper = {
    inStation = false,
    inSpaced = false,
    inFleet = false,
    actionTabSelected = 1,
    isCommendWindowOpened = 0,
    currentShip = {
        shield = {percentage = 100, index = 1},
        armor = {percentage = 100, index = 1},
        hull = 100,
        capacitor = 100,
        role = {}
    },
    currentTargets = {
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        },
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        },
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        },
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        },
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        },
        {
            isActive = false,
            shield = {percentage = 100, index = 1},
            armor = {percentage = 100, index = 1},
            hull = 100,
        }

    },
    config = {
        const = {}
    },
    utils = {},
    modulesSlots = {
        Guns={},
        Drones={},
        RRepair={},
        Group={},
        Fleet={},
        Hardner={},
        LRepair={},
        LPlate={},
        Dps={},
        Prop={},
        DCU={},
        Siege={},
    }
};

setConfigs();
setConstants();
setUtils();

EveHelper.utils.settings.initDialog();
--EveHelper.utils.general.randomClickInRegionCircle(EveHelper.config.const.regions.noImages.actionButtons.but1, 3);
-- EveHelper.utils.general.logMessage('This is now set');

local buildModuleArray = function()
    local actionButtons = EveHelper.config.const.regions.noImages.actionButtons;
    local l = 24;
    for i=1, l do
        local slotName = 'but'..tostring(i);
        local regionName = i <= 12 and 'but'..tostring(i) or 'but'..tostring(i-12);
        local slotIndexValue = preferenceGetNumber(slotName, 1);
        if (slotIndexValue ~= 1) then
            table.insert(EveHelper.modulesSlots[EveHelper.config.const.moduleTypes[slotIndexValue]],{slot = slotName, details = actionButtons[regionName]});
            --table.insert(modulesSlotsss[moduleTypes[slotIndexValue]],{slot = slotName})
        end
    end

    --EveHelper.utils.general.logMessage(EveHelper.utils.general.dump(modulesSlotsss), 20);
end
local initHelper = function()
    local currentShipRegion = EveHelper.config.const.regions.noImages.shipStatus.currentShip;
    local currentShipNoLoseColor = EveHelper.config.const.shipStatusColors.currentShip;
    local targetRegions = EveHelper.config.const.regions.noImages.shipStatus.targets;
    local targetNoLoseColor = EveHelper.config.const.shipStatusColors.targets;
    local _isVolumeUp = false;
    local _isVolumeDown = false;

    while(true)
    do
        snapshotColor()
        usePreviousSnap(true);
        EveHelper.utils.general.logMessage('aaaaaaaa');

        if pcall(EveHelper.utils.scanners.isInSpace) then
            EveHelper.inSpaced = true;
        else
            EveHelper.inSpaced = false;
        end

        if pcall(EveHelper.utils.scanners.isInStation) then
            EveHelper.inStation = true;
        else
            EveHelper.inStation = false;
        end

        -- not inSpace or Station - check at what situation are we.
        if (not EveHelper.inSpaced and not EveHelper.inStation ) then
            --EveHelper.utils.general.logMessage('no space, no station', 1);

            if pcall(EveHelper.utils.scanners.inHomeScreen) then
                --EveHelper.utils.general.logMessage('In home screen starting eve', 1);
                startApp('com.netease.eve.en');
            end

            if pcall(EveHelper.utils.scanners.isConfirmExist) then
                --EveHelper.utils.general.logMessage('In lost connection and confirm clicking confirm', 1);
                keyevent(187);
                wait(3);
            end

            if (EveHelper.utils.scanners.isCloseEveExist()) then
                --EveHelper.utils.general.logMessage('Eve Close app exist', 1);
                wait(1);
                click(EveHelper.config.const.regions.withImages.eveCloseButton.reg);
                wait(2);
                startApp('com.netease.eve.en');
            end

            if pcall(EveHelper.utils.scanners.isInAccountSelection) then
                --EveHelper.utils.general.logMessage('In account selection screen clicking start', 1);
                click(EveHelper.config.const.regions.noImages.startClick);
                wait(1);
            end

            if pcall(EveHelper.utils.scanners.isInCharSelection) then
                --EveHelper.utils.general.logMessage('In character selection screen selecting first char', 1);
                click(EveHelper.config.const.regions.noImages.selectCharacter);
                wait(5);
            end

        else
            --EveHelper.utils.general.logMessage('inSpace or station', 1);
            -- inSpace or station
            -- only check if in space.
            if (EveHelper.inSpaced) then
                if pcall(EveHelper.utils.scanners.isInFleet) then
                    EveHelper.inFleet = true;
                else
                    EveHelper.inFleet = false;
                end

                -- only in fleet
                -- todo add filters setting
                if (EveHelper.inFleet) then
                    if (EveHelper.utils.scanners.isFleetWindowOpened()) then
                        EveHelper.isCommendWindowOpened = true;
                    else
                        EveHelper.utils.general.logMessage('elseeeee');
                        EveHelper.isCommendWindowOpened = false;
                        EveHelper.utils.general.randomClickInRegionCircle(EveHelper.config.const.regions.noImages.fleetButtons.fleet, 3);
                        wait(0.6);
                        EveHelper.utils.general.randomClickInRegionCircle(EveHelper.config.const.regions.noImages.fleetButtons.fleetOutCommends, 3);
                        wait(0.3);

                        if pcall(EveHelper.utils.scanners.hasCareTakerText) then
                            EveHelper.utils.general.randomClickInRegionRectangle(EveHelper.config.const.regions.noImages.fleetButtons.outCommendsCareTaker);
                            wait(0.4);
                        end
                    end
                end


                -- only check if tabSwitch is visible.
                if pcall(EveHelper.utils.scanners.tabSwitchIsVisible) then
                    local tabOneRegion = EveHelper.config.const.regions.noImages.actionButtons.tab1ColorScan;
                    local tabOneColor = EveHelper.config.const.ActionBarTabColors;
                    if (EveHelper.utils.general.isRegionColorMatch(tabOneRegion, tabOneColor)) then
                        EveHelper.actionTabSelected = 1;
                    else
                        EveHelper.actionTabSelected = 2;
                    end
                end

                -- add a check only do this if its visible.
                if (EveHelper.utils.scanners.fleetType == 2) then
                    EveHelper.utils.general.checkTankStatus(currentShipRegion, currentShipNoLoseColor, EveHelper.currentShip, 'shield', EveHelper.currentShip.shield.index);
                else
                    EveHelper.utils.general.checkTankStatus(currentShipRegion, currentShipNoLoseColor, EveHelper.currentShip, 'armor', EveHelper.currentShip.armor.index);
                end

                -- check which targets are active and check active target's stats shield/armor
                for i,targetDetails in ipairs(targetRegions) do
                    local checkRegions = targetDetails.activeCheck;

                    if(EveHelper.utils.general.isRegionColorMatch(checkRegions[1], targetNoLoseColor)) then
                        EveHelper.currentTargets[i].isActive = true;
                    elseif(EveHelper.utils.general.isRegionColorMatch(checkRegions[2], targetNoLoseColor)) then
                        EveHelper.currentTargets[i].isActive = true;
                    elseif(EveHelper.utils.general.isRegionColorMatch(checkRegions[3], targetNoLoseColor)) then
                        EveHelper.currentTargets[i].isActive = true;
                    end

                    if (EveHelper.currentTargets[i].isActive) then
                        if (fleetType == 2) then
                            EveHelper.utils.general.checkTankStatus(targetDetails, targetNoLoseColor, EveHelper.currentTargets[i], 'shield', EveHelper.currentTargets[i].shield.index);
                        else
                            EveHelper.utils.general.checkTankStatus(targetDetails, targetNoLoseColor, EveHelper.currentTargets[i], 'armor', EveHelper.currentTargets[i].armor.index);
                        end
                    end
                end

                -- activating hardners
                for k,v in pairs(EveHelper.modulesSlots.Hardner) do
                    if (not EveHelper.utils.general.isRegionColorMatch(v.details.activeCheck, EveHelper.config.const.ActionBarActiveColors)) then
                        EveHelper.utils.general.randomClickInRegionCircle(v.details.reg);
                    end
                end

                -- if currentship tank drop bellow trashhold use local repair and/or local plate
                local fleetTypeName = string.lower(EveHelper.config.const.fleetTypeItems[fleetType]);
                local currentShipTankStatus = EveHelper.currentShip[fleetTypeName].percentage;

                if(currentShipTankStatus <= rrTrashHold) then
                    --EveHelper.utils.general.randomClickInRegionRectangle(EveHelper.config.const.regions.noImages.fleetButtons.outCommendsRepair);
                    if(table.getn(EveHelper.modulesSlots.LRepair) > 0) then
                        for k,v in pairs(EveHelper.modulesSlots.LRepair) do
                            if (not EveHelper.utils.general.isRegionColorMatch(v.details.activeCheck, EveHelper.config.const.ActionBarActiveColors)) then
                                EveHelper.utils.general.randomClickInRegionCircle(v.details.reg, 5);
                            end
                        end
                    end

                    if(table.getn(EveHelper.modulesSlots.LPlate) > 0) then
                        for k,v in pairs(EveHelper.modulesSlots.LPlate) do
                            if (not EveHelper.utils.general.isRegionColorMatch(v.details.activeCheck, EveHelper.config.const.ActionBarActiveColors)) then
                                EveHelper.utils.general.randomClickInRegionCircle(v.details.reg, 5);
                            end
                        end
                    end
                end

                --if pcall(function() return EveHelper.utils.scanners.hasFollowFc('bmrdude.png') end) then
                --    EveHelper.utils.general.logMessage('blaa');
                --end


                --[[
                scan for commends
                on commend - check which commend
                if approach
                check if approach FC
                activate propmodes - group modes // fleet modes
                else
                deactivate propmodes - group and fleet modes.
                ]]--

                --EveHelper.modulesSlots
                --fleetPosition//fleetRole//fleetType//rrTrashHold



                -- on commend approach me - activate propmodes - group modes // fleet modes
                -- on commend approach anyone else - deactivate propmodes - group and fleet modes.


                -- {
                -- humnaize screen clicking.
                -- add a last click location flag, then on new click calculate the distance between last to new click
                -- and based on distance add a delay between click to fake finger movement time.
                -- also add a random 0-0.5 second delay just to fake reaction times.
                -- }

                -- add scan for incoming commends
                -- add reaction to incoming commends - with a randomized response timer.
                -- add sending commend based on health
                -- add repairing logic - so report repairs are used base on the missing health and urgency.
                -- add check if remote repair modes are active and make a foolproof reset (double activating);


                -- test everything thoroughly.
                -- test how heavy this is and how many will i be able to run on 1 computer.



                --EveHelper.utils.general.logMessage('Is in space: '..tostring(EveHelper.inSpaced)..'\nIs in Fleet: '..tostring(EveHelper.inFleet)..'\nAction tab selected: '..tostring(EveHelper.actionTabSelected)..'\n Commend Window opened: '..tostring(EveHelper.isCommendWindowOpened)..'\n Ship shield : '..tostring(EveHelper.currentShip.shield.percentage)..'\n  Ship armor : '..tostring(EveHelper.currentShip.armor.percentage)..'\n', 3);
                --EveHelper.utils.general.logMessage('active Targets:  target 1 - '.. tostring(EveHelper.currentTargets[1].isActive) .. ', target 2 - '.. tostring(EveHelper.currentTargets[2].isActive) .. ', target 3 - '.. tostring(EveHelper.currentTargets[3].isActive) .. ', target 4 - '.. tostring(EveHelper.currentTargets[4].isActive) .. ', target 5 - '.. tostring(EveHelper.currentTargets[5].isActive) .. ', target 6 - '.. tostring(EveHelper.currentTargets[6].isActive), 3);
                --EveHelper.utils.general.logMessage('Targets shields:  target 1 - '.. tostring(EveHelper.currentTargets[1].shield.percentage) .. ', target 2 - '.. tostring(EveHelper.currentTargets[2].shield.percentage) .. ', target 3 - '.. tostring(EveHelper.currentTargets[3].shield.percentage) .. ', target 4 - '.. tostring(EveHelper.currentTargets[4].shield.percentage) .. ', target 5 - '.. tostring(EveHelper.currentTargets[5].shield.percentage) .. ', target 6 - '.. tostring(EveHelper.currentTargets[6].shield.percentage), 3);
                --EveHelper.utils.general.logMessage('Targets armors:  target 1 - '.. tostring(EveHelper.currentTargets[1].armor.percentage) .. ', target 2 - '.. tostring(EveHelper.currentTargets[2].armor.percentage) .. ', target 3 - '.. tostring(EveHelper.currentTargets[3].armor.percentage) .. ', target 4 - '.. tostring(EveHelper.currentTargets[4].armor.percentage) .. ', target 5 - '.. tostring(EveHelper.currentTargets[5].armor.percentage) .. ', target 6 - '.. tostring(EveHelper.currentTargets[6].armor.percentage), 3);
            end
        end
    end
end
local isReady = function()
    return (fleetPosition ~= 1 and fleetRole ~= 1 and fleetType ~= 1);
end

repeat
    wait(0.3);
    if(isReady()) then
        buildModuleArray();
        initHelper();
        break;
    else
        EveHelper.utils.general.logMessage('Settings are incomplete\n Please stop script and run again \n Fill in settings missing fields', 3);
    end
until(isReady())
