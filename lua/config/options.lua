local options = {
  autoread = true,
  autowrite = true,
  breakindent = true,
  clipboard = "unnamed,unnamedplus",
  -- colorcolumn = "+1",
  cmdheight = 0,
  complete = { ".", "w", "b", "u", "t", "i", "kspell" },
  completeopt = { "menuone", "noselect" },
  cursorline = false,
  expandtab = true,
  fillchars = { foldclose = " ", fold = " ", eob = " " },
  hidden = true,
  inccommand = "split",
  ignorecase = true,
  list = false,
  listchars = { eol = "↲", tab = "▸ ", trail = "·" },
  mouse = "a",
  nrformats = { "alpha", "octal", "hex" },
  number = true,
  numberwidth = 3,
  relativenumber = true,
  scrolloff = 0,
  shiftround = true,
  shiftwidth = 2,
  shortmess = "aToIOWAF",
  showbreak = "↪",
  showmatch = true,
  showmode = false,
  sidescrolloff = 0,
  signcolumn = "yes:3",
  smartcase = true,
  smartindent = true,
  softtabstop = 2,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2,
  termguicolors = true,
  textwidth = 80,
  timeout = true,
  timeoutlen = 270,
  ttimeout = true,
  ttimeoutlen = 5,
  updatetime = 500,
  undofile = true,
  undolevels = 1000,
  undoreload = 10000,
  virtualedit = { "block" },
  wildmode = { "list", "longest" },
  winborder = 'rounded',
  wrap = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.formatoptions:remove("o")

vim.cmd [[set termguicolors]]
vim.cmd([[filetype plugin indent on]])

vim.g.have_nerd_font = true

vim.g.bullets_enabled_file_types = {
  "gitcommit",
  "markdown",
  "scratch",
  "text",
  "wiki",
}

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local args = vim.fn.argc()
    local is_stdin = vim.fn.line2byte(vim.fn.line("$") + 1) ~= -1
    local first_arg = args > 0 and vim.fn.argv(0) or nil

    if (args == 0 and not is_stdin) or (args == 1 and first_arg == ".") then
      vim.schedule(function()
        vim.cmd("Oil")
      end)
    end
  end,
})

local undodir = vim.fn.stdpath("data") .. "/undo"
if not vim.fn.isdirectory(undodir) then
  vim.fn.mkdir(undodir, "p", 0700)
end
vim.opt.undodir = undodir
