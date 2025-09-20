AddEventHandler("nex-duty:server:onDutyStart", function(source, callsign, entity_id)

    -- Set the 'onduty' state from the server safely
--    Player(source).state:set("onduty", true, true)
    TriggerClientEvent('dutybridge:client:giveArmor', source)
    TriggerClientEvent('cs:bodycam:useBodyCam', source)
    Wait(500)
    TriggerClientEvent('okokNotify:Alert', source, 'Duty System', 'You are now on duty.', 3000, 'info', true)
end)

AddEventHandler("nex-duty:server:onDutyEnd", function(source, entity_id)

--    Player(source).state:set("onduty", false, true)
    TriggerClientEvent('cs:bodycam:useBodyCam', source)
    TriggerClientEvent('okokNotify:Alert', source, 'Duty System', 'You are now off duty.', 3000, 'info', true)
end)