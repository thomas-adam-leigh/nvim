return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
    },
    messages = {
      enabled = false,
    },
    notify = {
      enabled = false,
    },
    lsp = {
      progress = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
      message = { enabled = false },
    },
    popupmenu = {
      enabled = true,
    },
    presets = {
      command_palette = true,
    },
  },
}
