--lmc.minimizeToTray = true
--lmc_minimize()

lmc_print_devices()   -- get the ID of the second keyboard from the stack that this line creates
lmc_device_set_name('9KeyBlack', "2E6AE332") -- substitute the ID you have found here
lmc_device_set_name('AirMouse', "1AD43AFB") -- substitute the ID you have found here
lmc_device_set_name('3KeyWhite', "39D8BF39") -- substitute the ID you have found here
lmc_device_set_name('Sades', "B37B578") -- substitute the ID you have found here
lmc_device_set_name('NumberPad', "359FEC6A") -- substitute the ID you have found here

-- lmc_assign_keyboard('MACROS1') -- if Lua doesn't work try adding this line

-- define callback for whole device, assign each key of the keyboard to an imaginary key (usually, keyboards have F1-F12, so we start assigning keys to F13)
lmc_set_handler('9KeyBlack',function(button, direction)
  if (direction == 1) then return end  -- ignore down; if you want to be able to type the original letters as well with the secondary keyboard, remove this line
  if (button == string.byte('7')) then lmc_send_keys('+<') -- This doesn't seem to work, butI'd like it to work. Instead, I use the below line
  -- if (button == 55) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard7.exe")
  -- elseif (button == string.byte('H')) then lmc_spawn("calc")
  -- elseif (button == string.byte('9')) then lmc_send_keys('+{F8}')
  elseif (button == 57) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard9.exe")
  elseif (button == 49) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard1.exe") -- The AutoHokey script does WheelUp   This is instead of using string.byte and is the number identifier for that key on the keyboard which is 1 here
  elseif (button == 50) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard2.exe")
  elseif (button == 51) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard3.exe") -- The AutoHokey script does WheelDown
  elseif (button == 52) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard4.exe")
  elseif (button == 54) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard6.exe")
  elseif (button == 56) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard8.exe")
  -- elseif (button == string.byte('3')) then lmc_send_keys('{F16}')
  -- elseif (button == string.byte('4')) then lmc_send_keys('{F17}')
  -- elseif (button == 90) then lmc_send_keys('^+%{b}') -- once F keys are over, just use combitations with alt, ctrl, shift, win, or tab (https://github.com/me2d13/luamacros/wiki/List-of-Keys)
  -- etc.
  else print('Not yet assigned: ' .. button)
  end
end)
-- define callback for whole device, assign each key of the keyboard to an imaginary key (usually, keyboards have F1-F12, so we start assigning keys to F13)
lmc_set_handler('AirMouse',function(button, direction)
  if (direction == 1) then return end  -- ignore down; if you want to be able to type the original letters as well with the secondary keyboard, remove this line.
  if (button == string.byte('7')) then lmc_send_keys('+<') -- This doesn't seem to work, butI'd like it to work. Instead, I use the below line
  -- if (button == 55) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard7.exe")
  -- elseif (button == string.byte('H')) then lmc_spawn("calc")
  -- elseif (button == string.byte('9')) then lmc_send_keys('+{F8}')
  elseif (button == 38) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\AirMouseUp.exe")
  elseif (button == 40) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\AirMouseDown.exe")
  elseif (button == 89) then lmc_send_keys('+<{F6}')
  --elseif (button == 50) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard2.exe")
  --elseif (button == 51) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard3.exe") -- The AutoHokey script does WheelDown
  --elseif (button == 52) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard4.exe")
  --elseif (button == 54) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard6.exe")
  --elseif (button == 56) then lmc_spawn("C:\\Users\\Jonathan\\Documents\\9KeyKeyboard8.exe")
  -- elseif (button == string.byte('3')) then lmc_send_keys('{F16}')
  -- elseif (button == string.byte('4')) then lmc_send_keys('{F17}')
  -- elseif (button == 90) then lmc_send_keys('^+%{b}') -- once F keys are over, just use combitations with alt, ctrl, shift, win, or tab (https://github.com/me2d13/luamacros/wiki/List-of-Keys)
  -- etc.
  else print('Not yet assigned: ' .. button)
  end
end)
-- if you wanted more keyboards, just repeat line 5 with its id and a assign a new name, like MACROS2.
-- then repeat the code that starts in line 9, but change the name to the one you have just assigned.
-- For exemple, to: lmc_set_handler('MACROS2', ...

