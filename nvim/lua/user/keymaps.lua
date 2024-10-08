-- Space as leader key
vim.g.mapleader = " "

-- Shortcuts
vim.keymap.set({ "n", "x", "o" }, "<leader>h", "^")
vim.keymap.set({ "n", "x", "o" }, "<leader>l", "g_")
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")
vim.keymap.set("n", "<leader>c", "{jgc%")

-- Delete text
vim.keymap.set({ "n", "x" }, "x", '"_x')

-- Commands
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>")
vim.keymap.set("n", "<leader>bq", "<cmd>bdelete<cr>")
vim.keymap.set("n", "<leader>bl", "<cmd>buffer #<cr>")
