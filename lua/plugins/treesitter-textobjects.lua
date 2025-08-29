return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  enabled = true,
  event = require("config.events").file,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
