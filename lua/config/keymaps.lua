-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

local function find_directories()
  require('telescope.builtin').find_files({
    prompt_title = 'Find Directories',
    find_command = { 'find', '.', '-type', 'd', '-not', '-path', '*/.*' },
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')

      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        require('oil').open(selection.path)
      end)

      return true
    end,
  })
end

vim.keymap.set("n", "<leader>fd", find_directories, { desc = "Telescope find directory and open in oil" })

-- oil
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- general
vim.keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>q", "<CMD>qa<CR>", { desc = "quit without saving" })
vim.keymap.set("n", "<leader>z", "<CMD>wq<CR>", { desc = "quit without saving" })
vim.keymap.set("n", "<leader>no", "<CMD>noh<CR>", { desc = "clear search highlight" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- harpoon
vim.keymap.set('n', '<leader>a', function() require("harpoon"):list():add() end, { desc = "Add file to harpoon list" })
vim.keymap.set('n', '<leader>h', function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
  { desc = "Toggle harpoon quick menu" })
vim.keymap.set('n', '<leader>1', function() require("harpoon"):list():select(1) end,
  { desc = "Navigate to file at position 1" })
vim.keymap.set('n', '<leader>2', function() require("harpoon"):list():select(2) end,
  { desc = "Navigate to file at position 2" })
vim.keymap.set('n', '<leader>3', function() require("harpoon"):list():select(3) end,
  { desc = "Navigate to file at position 3" })
vim.keymap.set('n', '<leader>4', function() require("harpoon"):list():select(4) end,
  { desc = "Navigate to file at position 4" })
