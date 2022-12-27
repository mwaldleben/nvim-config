local cp_status_ok, copilot = pcall(require, "copilot")
if not cp_status_ok then
  print("Error in require for copilot")
end

local cp_cmp_status_ok, copilot_cmp = pcall(require, "copilot_cmp")
if not cp_cmp_status_ok then
  print("Error in require for copilot_cmp")
end

copilot.setup()
copilot_cmp.setup()

