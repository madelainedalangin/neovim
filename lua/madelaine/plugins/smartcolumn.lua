local setup, smartcolumn = pcall(require, "smartcolumn")
if not setup then
	return
end

smartcolumn.setup()
