local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m",":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "\\",":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>-", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>|", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>z", ":MaximizerToggle<CR>", opts) -- Toggle Minimise

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

