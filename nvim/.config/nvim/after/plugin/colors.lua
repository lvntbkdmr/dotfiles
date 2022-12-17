function ColorMyPencils(color) 
    vim.o.background = "light"
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
