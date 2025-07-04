require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>gf", vim.lsp.buf.format, {})

vim.api.nvim_set_keymap("n", "<leader>r", ":RustRun<CR>", { noremap = true })

-- map('n', '<leader>r', ':RustRun<CR>')
