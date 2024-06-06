-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "<C-c>", "<ESC>", { noremap = true, silent = true })

LazyVim.safe_keymap_set("i", "<A-CR>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-w>", "<Up>")
LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-s>", "<Down>")
LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-a>", "<Left>")
LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-d>", "<Right>")

LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-q>", "<esc>")
LazyVim.safe_keymap_set({ "n", "i", "v", "t" }, "<A-t>", "<cmd>q<CR>")
