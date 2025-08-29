# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a Neovim configuration using the Lazy.nvim plugin manager. The configuration is modular and organized into:

- `init.lua` - Entry point that sets leaders, bootstraps Lazy.nvim, and loads core configuration
- `lua/config/` - Core configuration modules (options, keymaps, colorscheme, etc.)
- `lua/plugins/` - Plugin specifications and configurations
- `lua/snippets/` - Custom LuaSnip snippets for JavaScript/TypeScript

## Key Configuration Components

### Plugin Management
- Uses Lazy.nvim for plugin management with lazy loading enabled by default
- Plugin specs are defined in `lua/plugins/` directory
- Lock file at `lazy-lock.json` tracks exact plugin versions

### LSP Setup
- Mason for LSP server management with auto-install enabled
- Configured language servers: TypeScript (ts_ls), Ruby (solargraph), HTML, Lua
- LSP keybindings: `K` (hover), `<leader>gd` (definition), `<leader>gr` (references), `<leader>ca` (code actions)

### Completion System
- nvim-cmp for completion with LSP and snippet sources
- LuaSnip for snippets with friendly-snippets integration
- Custom snippets loaded from `./lua/snippets/`

### File Navigation
- Telescope for fuzzy finding
- Oil.nvim for file management
- Harpoon2 for quick file switching

## Common Operations

### Plugin Management
- `:Lazy` - Open Lazy.nvim interface
- `:Lazy sync` - Update plugins
- `:Lazy clean` - Remove unused plugins

### LSP Operations
- `:Mason` - Open Mason interface to manage LSP servers
- `:LspInfo` - Show LSP client information
- `:LspRestart` - Restart LSP clients

### Configuration Testing
Since this is a Neovim config, restart Neovim to test changes or use `:source init.lua` for quick reloading.

## File Structure Notes
- All Lua modules use `return {}` pattern for plugin specifications
- LSP capabilities are shared across language servers via cmp_nvim_lsp
- Custom snippets follow LuaSnip format in language-specific files