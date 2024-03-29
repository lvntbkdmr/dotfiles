function ColorMyPencils(color)
    vim.o.background = "dark"
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
