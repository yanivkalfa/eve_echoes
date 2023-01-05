--[[
EveHelper = {}
EveHelper = {
    currentShip = {
        shield = 100,
        armor = 100,
        hull = 100,
        capacitor = 100,
        role = {}
    },
    currentTargets = {}
};


EveHelper.config = {
    settingInitiated = false,
    const = {}
};



print(package.path);
--]]
--[[
while(running)
do

end


Settings:setCompareDimension(true, 1280);
Settings:setScriptDimension(true, 1280);

imageSearchWait = 5;
defaultWait = 1 --seconds
statusRegion = Region(0,525, 370,50);
undockRegion = Region(1076,219,79,41);
fleetRegion = Region(3, 235, 50, 31);


while(running)
do

end

--]]


--existsClick("fleet.png", imageSearchWait);

--[[
coroutineTest = coroutine.create(function ()
    wait(3)
    statusRegion:highlight('inside coroutine', defaultWait);
end)
statusRegion:highlight('outside coroutine', defaultWait);

--]]

--[[
co = coroutine.create(function(region)
    undockRegion:existsClick("undock.png", defaultWait)

    undock = undockRegion:exists("Undock.png", defaultWait);

    if undock then
        undockRegion:existsClick("Undock.png", defaultWait)
        statusRegion:highlight('undock exists', defaultWait);
    else
        statusRegion:highlight('zzzzzzzzzzzz', defaultWait);
    end

    print(co);
end)

print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))



wait(5);
undockRegion:existsClick("undock.png", defaultWait)
--]]

--[[

statusRegion:highlight('WhatEver Mofu', defaultWait);

undock = undockRegion:exists("Undock.png", imageSearchWait);

if undock then
    statusRegion:highlight('undock exists', defaultWait);
end

statusRegion:highlight('TimerStarting', defaultWait);
wait(0.5)
statusRegion:highlight('After Await', defaultWait);
sleep(1)
statusRegion:highlight('After sleep', defaultWait);


--statusRegion:highlight(_VERSION, defaultWait);
--]]
--[[

while(condition)
do
    statement(s)
end

defaultWait = 3 --seconds

imageSearchWait = 5

statusRegion = Region(0,525, 370,50)



cargoCountDelivered = 0



--string concatenation example: 'hello' .. name;



--Проверка в доке или в космосе, проверка по наличию кнопки выход из дока.

function isInDock()

    existsClick("XCloseCargoMovement.png", imageSearchWait)

    statusRegion:highlight('Проверяем в доке или в космосе', defaultWait);

    undock = Region(1050,200,220,65):exists("Undock.png", imageSearchWait);

    if undock then

        statusRegion:highlight('В доке', defaultWait);

        return true;

    else

        statusRegion:highlight('В космосе', defaultWait);

        return false;

    end

end



function isCargoFull()

    statusRegion:highlight('Проверяем грузовой отсек', defaultWait);

    cargo = Region(0, 70, 122, 55):exists("100PCargo.png", imageSearchWait);

    if cargo then

        statusRegion:highlight('Грузовой отсек полон', defaultWait);

        return true;

    else

        statusRegion:highlight('Грузовой отсек пуст', defaultWait);

        return false;

    end

end



function activateNewVenture()

    statusRegion:highlight('Открываем ангар', defaultWait);

    cargo = Region(3, 68, 120, 58):existsClick("Cargo.png", imageSearchWait);

    if cargo then

        Region(10, 244, 256, 103):existsClick("ShipHangar.png", imageSearchWait);

        venture = existsClick("Venture.png", imageSearchWait);

        if venture then

            statusRegion:highlight('Активируем вентуру', defaultWait);

            activate = existsClick("SetActive.png", imageSearchWait);

            if activate then

                wait(5);

                existsClick("XCloseCargoMovement.png", imageSearchWait);

                return true;

            else

                return false;

            end

        else

            statusRegion:highlight('Нет свободных вентур', defaultWait);

        end

    else

        return false;

    end

end



function isCapsule(space)

    statusRegion:highlight('Проверяем наличие корабля', defaultWait);

    fitting = Region(145, 75, 115, 45):existsClick("FitIcon.png", imageSearchWait);

    wait(defaultWait);

    if fitting then

        capsule = Region(8, 166, 213, 80):exists("Capsule.png", imageSearchWait);

        if capsule then

            if not Region(1206, 12, 54, 53):existsClick("XCloseCargoMovement.png", imageSearchWait) then

                statusRegion:highlight('Что-то пошло не так...', defaultWait);

            end

            statusRegion:highlight('У нас капсула, видимо нас убили..', defaultWait);

            if space then

                goToStation();

            end

            activated = activateNewVenture();

            if activated then

                statusRegion:highlight('Переключили корабль', defaultWait);

            else

                scriptExit('Корабль уничтожен, остановка скрипта')

            end

        else

            statusRegion:highlight('Все в порядке, продолжаем добывать', defaultWait);

            if not Region(1206, 12, 54, 53):existsClick("XCloseCargoMovement.png", imageSearchWait) then

                statusRegion:highlight('Что-то пошло не так...', defaultWait);

            end

        end

    else

        statusRegion:highlight('Не удалось проверить наличие корабля', defaultWait);

    end

end



function moveCargo()

    statusRegion:highlight('Перемещаем из грузового отсека', defaultWait);

    if Region(0, 70, 122, 55):existsClick("100PCargo.png", imageSearchWait) then

        wait(defaultWait)

        if Region(14, 513, 248, 108):existsClick("OptOreHold.png", imageSearchWait) then

            wait(defaultWait)

            if Region(926, 599, 116, 106):existsClick("SelectAll.png", imageSearchWait) then

                wait(defaultWait)

                if Region(16, 103, 251, 87):existsClick("MoveOreTo.png", imageSearchWait) then

                    wait(defaultWait)

                    if Region(181, 119, 272, 89):existsClick("ItemHanger.png", imageSearchWait) then

                        wait(defaultWait)

                        if Region(1206, 12, 54, 53):existsClick("XCloseCargoMovement.png", imageSearchWait) then

                            statusRegion:highlight('Всё выгрузили', defaultWait);

                        else

                            statusRegion:highlight('Что-то пошло не так...', defaultWait);

                        end

                    else

                        statusRegion:highlight('Что-то пошло не так...', defaultWait);

                    end

                else

                    statusRegion:highlight('Что-то пошло не так...', defaultWait);

                end

            else

                statusRegion:highlight('Что-то пошло не так...', defaultWait);

            end

        else

            statusRegion:highlight('Что-то пошло не так...', defaultWait);

        end

    else

        statusRegion:highlight('Что-то пошло не так...', defaultWait);

    end

end



function openMenuIfNeed()

    statusRegion:highlight('Проверяем открыто ли меню', defaultWait);

    menu = Region(1207, 378, 60, 53):exists("EyeIcon.png", imageSearchWait);

    if menu then

        statusRegion:highlight('Меню закрыто, открываем', defaultWait);

        if not Region(1207, 378, 60, 53):existsClick("EyeIcon.png", imageSearchWait) then

            statusRegion:highlight('Не удалось открыть меню', defaultWait);

        end

    else

        statusRegion:highlight('Меню открыто', defaultWait);

    end

end



function openBeltsList(needToGo)

    if not Region(969,1,194,58):exists("MiningCurrent.png") or not Region(966,55,28,662):exists("SelectOreToMine.png") then

        dropdownMenu = Region(1104,19,48,23):existsClick("ShowDropdownMy.png", imageSearchWait)

        if dropdownMenu then

            belts = Region(970,515,248,89):existsClick("MinigScreenRu.png", imageSearchWait)

            if belts then

                if needToGo then

                    return goToRandomBelt();

                else

                    return true;

                end;

            else

                statusRegion:highlight('Не удалось выбрать пункт добычи', defaultWait);

                return false

            end

        else

            statusRegion:highlight('Не удалось открыть меню', defaultWait);

            return false

        end

    else

        return true;

    end

end



function goToRandomBelt()

    belts = listToTable(Region(967,51,28,382):findAllNoFindException("MiningLocation.png"));

    while not belts do

        wait(defaultWait)

    end

    statusRegion:highlight('Найдено ' .. table.getn(belts) .. ' полей астероидов', defaultWait);

    if typeOf(table.getn(belts)) == "number" and not table.getn(belts) == 0 then

        number = table.getn(belts);

    else

        number = 2;

    end

    wait(imageSearchWait);

    randomBeltNumber = math.random(number - 1);

    statusRegion:highlight('Выбран ' .. randomBeltNumber .. ' пояс', defaultWait);

    for i, m in ipairs(belts) do

        if(i == randomBeltNumber) then

            click(m);

        end

    end

    wait(defaultWait)

    if Region(704,40,268,522):existsClick("warp.png") then

        statusRegion:highlight('Варп к поясу', defaultWait);

        wait(10)

        return true;

    else

        statusRegion:highlight('Не удалось отправиться к поясу', defaultWait);

        return false

    end

end



function mining()

    if not Region(966,55,28,662):exists("SelectOreToMine.png") then

        onTheBelt = openBeltsList(true);

    else

        statusRegion:highlight('Уже на поле астероидов', defaultWait);

        onTheBelt = true;

    end



    if onTheBelt then

        while not isCargoFull() or Region(1050,200,220,65):exists("Undock.png", imageSearchWait) do

            if not Region(428,32,532,132):exists("MineProc.png") then

                openBeltsList(false);

                Region(1222,52,53,64):existsClick("filterOre.png", imageSearchWait)

                --wait(defaultWait)

                Region(966,50,25,596):existsClick("SelectOreToMine.png", imageSearchWait)

                --wait(1)

                selectedOre = selectOre();

                if not selectedOre then

                    break;

                end

                --wait(defaultWait)

                ore = Pattern("ore.png"):similar(0.8)

                if Region(500,19,463,107):existsClick(ore, imageSearchWait) then

                    -- wait(defaultWait)

                    if existsClick("Orbit.png") then

                        --wait(defaultWait)

                        while not Region(428,32,532,132):exists("MineProc.png", imageSearchWait) do

                            statusRegion:highlight('Пытаемся начать добычу', defaultWait);

                            miner = findAllNoFindException("StartMine.png", imageSearchWait)

                            for i, m in ipairs(miner) do

                                click(m)

                            end

                        end

                    end

                end

            else

                stopMining = hasAnotherShips();

                if stopMining then

                    break;

                end

                statusRegion:highlight('Продолжаем добывать текущий астероид', defaultWait);

            end

        end

        goToStation()

    else

        statusRegion:highlight('Не удалось отправиться к поясу (mining)', defaultWait);

    end

end



function hasAnotherShips()

    statusRegion:highlight('Проверяем есть ли корабли', defaultWait);

    openShipMenuIfNeed();



    if not Region(965,1,312,620):exists("NoShipFound.png", imageSearchWait) and not Region(1221,55,56,575):exists("Barge.png") then

        statusRegion:highlight('Отправляюсь на станцию', 1);

        goToStation();

        wait(60);

        return true;

    else

        statusRegion:highlight('Мы одни, продолжаем добывать', defaultWait);

        return false;

    end

end



function openShipMenuIfNeed()

    if Region(969,1,312,620):exists("ShipMenuCurrent.png", imageSearchWait) then

        statusRegion:highlight('Пункт корабль уже открыт', defaultWait);

    else

        dropdownMenu = Region(1104,19,48,23):existsClick("ShowDropdownMy.png", imageSearchWait)

        if dropdownMenu then

            ships = Region(970,1,312,620):existsClick("ShipMenu.png", imageSearchWait)

            if ships then

                statusRegion:highlight('Открыл меню', defaultWait);

                return true

            else

                statusRegion:highlight('Не удалось выбрать пункт Корабли', defaultWait);

                return false

            end

        else

            statusRegion:highlight('Не удалось открыть меню', defaultWait);

            return false

        end

    end

end



function goToStation()

    dropdownMenu = Region(1104,19,48,23):existsClick("ShowDropdownMy.png", imageSearchWait)

    if dropdownMenu then

        stationList = Region(520,4,738,702):existsClick("MenuStation.png", imageSearchWait)

        if stationList then

            if Region(520,4,738,702):existsClick("StationLocation.png", imageSearchWait) then

                wait(defaultWait)

                if Region(520,4,738,702):existsClick("OptDock.png", imageSearchWait) then

                    statusRegion:highlight('Отправляемся к станции', defaultWait);

                end

            end

            while not exists("Undock.png", imageSearchWait) do

                wait(defaultWait)

            end

        else

            statusRegion:highlight('Не удалось выбрать станцию', defaultWait);

            return false

        end

    else

        statusRegion:highlight('Не удалось открыть меню', defaultWait);

        return false

    end

end



function selectOre()

    moveToRandom = Region(966,50,25,596):existsClick("SelectOreToMine.png");

    if moveToRandom then

        existsClick("Orbit.png");

    end

    selected = Region(963,52,312,656):existsClick("oreSpodumain.png")

    if selected then

        wait(defaultWait)

        if not existsClick("MineLock.png") then

            statusRegion:highlight('Не удалось заблокировать астероид', defaultWait);

            goToStation();

            return false;

        end

    else

        selected2 = Region(963,52,312,656):existsClick("oreDarkOchre.png")

        if selected2 then

            wait(defaultWait)

            if not existsClick("MineLock.png") then

                statusRegion:highlight('Не удалось заблокировать астероид', defaultWait);

                goToStation();

                return false;

            end

        else

            selected3 = Region(966,50,25,596):existsClick("SelectOreToMine.png")

            if selected2 then

                wait(defaultWait)

                if not  existsClick("MineLock.png") then

                    statusRegion:highlight('Не удалось заблокировать астероид', defaultWait);

                    goToStation();

                    return false;

                end

            end

        end

    end

    Region(1222,52,53,64):existsClick("filterOre.png", imageSearchWait)

    wait(defaultWait)

    ore = Pattern("ore.png"):similar(0.8)

    if Region(500,19,463,107):existsClick(ore, imageSearchWait) then

        statusRegion:highlight('Заблокирован астероид', defaultWait);

    else

        isCapsule(true)

    end

    return true;

end



while true do

    if isInDock() then

        isCapsule(false);

        if isCargoFull() then

            moveCargo()

        end

        wait(defaultWait)

        statusRegion:highlight('Выходим из дока..', defaultWait);

        Region(1050,200,220,65):existsClick("Undock.png", imageSearchWait)

        wait(10)

    else

        openMenuIfNeed()

        wait(defaultWait)

        mining()

    end

    wait(defaultWait);

end
]]--