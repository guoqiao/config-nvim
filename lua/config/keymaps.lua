-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

vim.keymap.set("n", "tt", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-Tree" })
vim.keymap.set("n", ";", ":", { desc = "Command mode" })
