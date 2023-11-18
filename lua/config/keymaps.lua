-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("i", "jk", "<ESC>:w!<CR>", opts)
keymaps.set("n", "<leader>w", ":w!<CR>", opts)
keymaps.set("n", "<leader>x", ":x<CR>", opts)
keymaps.set("n", "<leader>qq", ":bd<CR>", opts)
keymaps.set("n", "<leader>sj", ":bp<CR>", opts)
keymaps.set("n", "<leader>sk", ":bn<CR>", opts)
keymaps.set("n", "<leader>cc", ":nohlsearch<CR>", opts)

keymaps.set("n", "dw", "vb_d")
