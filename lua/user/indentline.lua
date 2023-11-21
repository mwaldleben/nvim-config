local status_ok, ibl = pcall(require, "ibl")
if not status_ok then
  print("Error in require for indent-blankline")
end

ibl.setup()
