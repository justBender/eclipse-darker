-- Eclipse Darker with Darcula as Basetheme after the RR theme

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "eclipse-darker"
vim.o.termguicolors = true
require("eclipse-darker").setup()
