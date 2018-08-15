-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');
-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  if (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  elseif (button == string.byte('C')) then lmc_send_keys("^(c)")
  elseif (button == string.byte('V')) then lmc_send_keys("^(v)")
  elseif (button == 109) then lmc_send_keys("`lawyerup{ENTER}")
  elseif (button == 107) then lmc_send_keys("`turtle{ENTER}")
  elseif (button == 110) then lmc_send_keys("`toolup{ENTER}")
  elseif (button == 97) then lmc_send_keys("`buzzoff{ENTER}")
  elseif (button == 98) then lmc_send_keys("`rapidgt{ENTER}")
  elseif (button == 37) then lmc_send_keys("+{HOME}")
  elseif (button == 39) then lmc_send_keys("+{END}")
  else print('Not yet assigned: ' .. button)
  end
end)
