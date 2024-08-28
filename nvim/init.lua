-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin").setup({
  flavour = "mocha",
  color_overrides = {
    mocha = {
      base = "#12121a",
      mantle = "#12121a",
      crust = "#12121a",
    },
  },
  transparent_background = true,
})
vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")
--my custom
require("config/options")
require("plugins/example")
require("config/keymaps")
