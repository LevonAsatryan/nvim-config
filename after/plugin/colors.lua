function ColorMePencils(color)
	color = color or 'cyberdream'
	vim.cmd.colorscheme(color)
	-- set the backround :so
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" });
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" });
end

ColorMePencils()
