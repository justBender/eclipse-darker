------ eclipse-darker ------

# eclipse-darker.nvim

A dark Neovim colorscheme inspired by an old Eclipse theme.

Built mainly for Rust, with support for Tree-sitter queries and common plugins.

## Features

- Dark, low-contrast palette
- Rust-friendly syntax highlighting
- Works with Lazy.nvim / LazyVim
- Tree-sitter query support

## Installation

### Lazy.nvim

```lua
{
  "justBender/eclipse-darker.nvim",
  lazy = false,
  priority = 1000,
  config = function()
  vim.cmd.colorscheme("eclipse-darker")
  end,
}
```
