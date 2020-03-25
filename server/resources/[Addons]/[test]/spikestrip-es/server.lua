AddEventHandler('chatMessage', function(source, n, msg)  -- usage /spike in chat maybe change to a hot key at later date
   msg = string.lower(msg)
   if (msg == "/spike") then
      CancelEvent()
      TriggerClientEvent('c_setSpike', source)
   end
end)
