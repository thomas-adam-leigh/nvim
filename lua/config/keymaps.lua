-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- oil
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- general
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>q", "<CMD>qa<CR>", { desc = "quit without saving" })
vim.keymap.set("n", "<leader>z", "<CMD>wq<CR>", { desc = "quit without saving" })

-- harpoon
vim.keymap.set('n', '<leader>a', function() require("harpoon"):list():add() end, { desc = "Add file to harpoon list" })
vim.keymap.set('n', '<leader>h', function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, { desc = "Toggle harpoon quick menu" })
vim.keymap.set('n', '<leader>1', function() require("harpoon"):list():select(1) end, { desc = "Navigate to file at position 1" })
vim.keymap.set('n', '<leader>2', function() require("harpoon"):list():select(2) end, { desc = "Navigate to file at position 2" })
vim.keymap.set('n', '<leader>3', function() require("harpoon"):list():select(3) end, { desc = "Navigate to file at position 3" })
vim.keymap.set('n', '<leader>4', function() require("harpoon"):list():select(4) end, { desc = "Navigate to file at position 4" })
