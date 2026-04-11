-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

vim.keymap.set("n", "tt", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-Tree", nowait = true })
vim.keymap.set("n", "ff", "<cmd>Neotree reveal<cr>", { desc = "Reveal in Neo-Tree", nowait = true })

vim.keymap.set("n", ";", ":", { desc = "Command mode" })
vim.keymap.set("n", "<C-S-R>", "<cmd>Lazy reload<cr>", { desc = "Reload config" })

-- Tab/Buffer keymaps
vim.keymap.set("n", "tc", "<cmd>bd<cr>", { desc = "Close current buffer" })
vim.keymap.set("n", "tn", "<cmd>tabnew<cr>", { desc = "Create new tab" })
vim.keymap.set("n", "tl", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "th", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

-- Buffer keymaps
vim.keymap.set("n", "to", function()
  local current = vim.fn.bufnr()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if buf ~= current and vim.api.nvim_buf_is_valid(buf) then
      vim.cmd(string.format("bd! %d", buf))
    end
  end
end, { desc = "Close all other buffers" })
