EveHelper.utils.scanners = {
    inHomeScreen = function()
        local eveRunButton = EveHelper.config.const.regions.withImages.eveRunButton;
        return eveRunButton.reg:find(eveRunButton.imgName);
    end,
    isConfirmExist = function()
        local confirmDisconnect = EveHelper.config.const.regions.withImages.confirmDisconnect;
        return confirmDisconnect.reg:find(confirmDisconnect.imgName);
    end,
    isCloseEveExistNormal = function()
        local eveCloseButton = EveHelper.config.const.regions.withImages.eveCloseButton;
        return eveCloseButton.reg:find(eveCloseButton.imgName);
    end,
    isCloseEveExistGrey = function()
        local eveCloseButton = EveHelper.config.const.regions.withImages.eveCloseButton;
        return eveCloseButton.reg:find(eveCloseButton.imgNameAlt);
    end,
    isInAccountSelection = function()
        local accountSelectButton = EveHelper.config.const.regions.withImages.accountSelectButton;
        return accountSelectButton.reg:find(accountSelectButton.imgName);
    end,
    isInCharSelection = function()
        local deleteCharacter = EveHelper.config.const.regions.withImages.deleteCharacter;
        return deleteCharacter.reg:find(deleteCharacter.imgName);
    end,
    isInStation = function()
        local undock = EveHelper.config.const.regions.withImages.undock;
        return undock.reg:find(undock.imgName);
    end,
    isInSpace = function()
        local stop = EveHelper.config.const.regions.withImages.stop;
        return stop.reg:find(stop.imgName);
    end,
    isInFleet = function()
        local fleet = EveHelper.config.const.regions.withImages.fleet;
        return fleet.reg:find(fleet.imgName);
    end,
    hasCareTakerText = function()
        local outCommendsCareTaker = EveHelper.config.const.regions.withImages.outCommendsCareTaker;
        return outCommendsCareTaker.reg:find(outCommendsCareTaker.imgName);
    end,
    hasFleetInCommend = function()
        local fleetInCommends = EveHelper.config.const.regions.withImages.fleetInCommends;
        return fleetInCommends.reg:find(fleetInCommends.imgName);
    end,
    hasFleetOutCommends = function()
        local fleetOutCommends = EveHelper.config.const.regions.withImages.fleetOutCommends;
        return fleetOutCommends.reg:find(fleetOutCommends.imgName);
    end,
    tabSwitchIsVisible = function()
        local tabSwitch = EveHelper.config.const.regions.withImages.tabSwitch;
        return tabSwitch.reg:find(tabSwitch.imgName);
    end,
    hasFollowFc = function(imgName)
        local respondToCommend = EveHelper.config.const.regions.noImages.fleetButtons.respondToCommend;
        return respondToCommend.reg:find(imgName);
    end,
    isFleetWindowOpened = function()
        if pcall(EveHelper.utils.scanners.hasFleetInCommend) then
            return true;
        end
        if pcall(EveHelper.utils.scanners.hasFleetOutCommends) then
            return true;
        end
        return false;
    end,
    isCloseEveExist = function()
        if pcall(EveHelper.utils.scanners.isCloseEveExistNormal) then
            return true;
        end
        if pcall(EveHelper.utils.scanners.isCloseEveExistGrey) then
            return true;
        end
        return false;
    end
}