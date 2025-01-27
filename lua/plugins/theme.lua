return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('catppuccin').setup {
      flavour = 'frappe',
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        nvimtree = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    }
  end,
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
