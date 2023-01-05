EveHelper.utils.settings = {
    initDialog = function()
        --[[
        removePreference('fleetPosition')
        removePreference('fleetRole')
        removePreference('fleetType')
        removePreference('rrTrashHold')
        --]]
        dialogInit();
        addTextView('Fleet Position: ');
        addSpinnerIndex('fleetPosition', EveHelper.config.const.fleetPositionItems, EveHelper.config.const.fleetPositionItems[1]);
        newRow()
        addTextView('Fleet Role: =');
        addSpinnerIndex('fleetRole', EveHelper.config.const.fleetRoleItems, EveHelper.config.const.fleetRoleItems[1]);
        newRow()

        addTextView('Fleet Type: ');
        addSpinnerIndex('fleetType', EveHelper.config.const.fleetTypeItems, EveHelper.config.const.fleetTypeItems[1]);
        newRow()

        addTextView('Remote Repair Trash-hold');
        addEditNumber('rrTrashHold', 80);
        newRow();
        addSeparator();

        addTextView('Select where your modules are placed');
        local moduleTypes = EveHelper.config.const.moduleTypes;
        newRow();
        addTextView('First tab of action bars');
        newRow();
        addSpinnerIndex('but6', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but5', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but4', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but3', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but2', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but1', moduleTypes, moduleTypes[1]);
        newRow();
        addSpinnerIndex('but12', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but11', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but10', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but9', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but8', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but7', moduleTypes, moduleTypes[1]);

        newRow();
        addSeparator();
        addTextView('Second tab of action bars');
        newRow();
        addSpinnerIndex('but18', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but17', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but16', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but15', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but14', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but13', moduleTypes, moduleTypes[1]);
        newRow();
        addSpinnerIndex('but24', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but23', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but22', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but21', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but20', moduleTypes, moduleTypes[1]);
        addSpinnerIndex('but19', moduleTypes, moduleTypes[1]);

        dialogShowFullScreen('Setup Settings');
    end
}