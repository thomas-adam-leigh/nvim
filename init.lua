-- YouTube
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.bootstrap")
require("config.lazy")

vim.cmd.colorscheme(require("config.colorscheme").name)

require("config.options")
require("config.keymaps")
