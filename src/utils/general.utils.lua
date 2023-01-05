local defaultWait = EveHelper.config.const.defaultWait;
local debugRegion = EveHelper.config.const.regions.noImages.debug;
EveHelper.utils.general = {
    dump = function(o)
        if typeOf(o) == 'table' then
            local s = '{ '
            for k,v in pairs(o) do
                if typeOf(k) ~= 'number' then k = '"'..k..'"' end
                s = s .. '['..k..'] = ' .. EveHelper.utils.general.dump(v) .. ','
            end
            return s .. '} '
        else
            return tostring(o)
        end
    end,
    logMessage = function(msg, duration)
        duration = (not duration) and defaultWait or duration
        debugRegion:highlight(tostring(msg), duration);
    end,
    randomLocFromRegRectangle = function(region)
        local minX = region:getX();
        local maxX = minX + region:getW();
        local minY = region:getY();
        local maxY = minY + region:getH();
        local randomX = math.random (minX, maxX);
        local randomY = math.random (minY, maxY);
        return Location(randomX, randomY)
    end,
    randomLocFromRegCircle = function(region, offset)
        offset = (not offset) and 0 or offset;
        local center = region:getCenter();
        local centerX = center:getX();
        local centerY = center:getY();
        local r = (math.min(region:getW(), region:getH()) / 2) - offset;
        local theta = math.random() * 2 * math.pi
        local rr = r * math.sqrt(math.random())
        local x = rr * math.cos(theta)
        local y = rr * math.sin(theta)
        return Location(math.floor(centerX + x), math.floor(centerY + y));
    end,
    findDistance = function(pointA, pointB)
        return math.sqrt(math.pow(pointB:getX() - pointA:getX(), 2) + math.pow(pointB:getY() - pointA:getY(), 2));
    end,
    delayClickByDistance  = function(newClickLocation)
        local delayRatio = 0.0005;
        local responseDelay = (math.random(2, 7) / 10);
        local distance = EveHelper.config.const.lastClickLocation
                and EveHelper.utils.general.findDistance(EveHelper.config.const.lastClickLocation, newClickLocation)
                or 0;

        --EveHelper.utils.general.logMessage('tostring(distance): '..tostring(distance).. 'delay: '..tostring(responseDelay + (distance*delayRatio)), 5);
        wait(responseDelay + (distance*delayRatio));
        EveHelper.config.const.lastClickLocation = newClickLocation;
    end,
    randomClickInRegionCircle = function(region, offset, ignoreDelay)
        local location  = EveHelper.utils.general.randomLocFromRegCircle(region, offset);
        if (not ignoreDelay) then
            EveHelper.utils.general.delayClickByDistance(location);
        end
        click(location);
    end,
    randomClickInRegionRectangle = function(region, ignoreDelay)
        local location  = EveHelper.utils.general.randomLocFromRegRectangle(region);
        if (not ignoreDelay) then
            EveHelper.utils.general.delayClickByDistance(location);
        end
        click(location);
    end,
    isRegionColorMatch = function(region, rgb)
        local r, g, b = getColor(region);
        return ((r >= rgb.R.min and r <= rgb.R.max) and
                (g >= rgb.G.min and g <= rgb.G.max) and
                (b >= rgb.B.min and b <= rgb.B.max));
    end,
    checkTankStatus = function(targetRegions, noLoseColors, statusToUpdate, tankType, currentIndex, skipColorMatch, skipPreviousMatch)
        local min = 1;
        local max = table.getn(targetRegions[tankType]);
        local previousCheckpoint = (currentIndex-1) >= min and targetRegions[tankType][currentIndex-1] or nil;
        local currentCheckpoint = targetRegions[tankType][currentIndex];
        local nextCheckpoint = (currentIndex+1) <= max and targetRegions[tankType][currentIndex+1] or nil;

        if (not skipPreviousMatch and previousCheckpoint and EveHelper.utils.general.isRegionColorMatch(previousCheckpoint.reg, noLoseColors)) then
            return EveHelper.utils.general.checkTankStatus(targetRegions, noLoseColors, statusToUpdate, tankType, currentIndex-1, true);
        end

        if (currentCheckpoint and (skipColorMatch or EveHelper.utils.general.isRegionColorMatch(currentCheckpoint.reg, noLoseColors))) then
            statusToUpdate[tankType] = {percentage = currentCheckpoint.percentage, index = currentIndex};
            return true;
        end

        return nextCheckpoint and EveHelper.utils.general.checkTankStatus(targetRegions, noLoseColors, statusToUpdate, tankType, currentIndex+1, false, true);
    end
}